const std = @import("std");
const mach = @import("mach");
const gpu = @import("gpu");
const glfw = @import("glfw");
const Chip = @import("emu");

//                 a b g r
const FG_COLOR = 0xff0000ff;
const BG_COLOR = 0xff000000;
const TEXTURE_SIZE = gpu.Extent3D{ .width = Chip.DISPLAY_WIDTH, .height = Chip.DISPLAY_HEIGHT };
const DATA_LAYOUT = gpu.Texture.DataLayout{
    .bytes_per_row = Chip.DISPLAY_WIDTH * 4,
    .rows_per_image = Chip.DISPLAY_HEIGHT,
};

var timer: mach.Timer = undefined;

pipeline: gpu.RenderPipeline,
queue: gpu.Queue,
bind_group: gpu.BindGroup,
chip_texture: gpu.Texture,
chip: Chip,
keys: [16]bool = [_]bool{false} ** 16,
chip_thread: std.Thread,
should_close: bool = false,

pub const App = @This();

pub fn init(app: *App, core: *mach.Core) !void {
    try app.chip.parseArguments(FG_COLOR, BG_COLOR);
    app.chip.setChipKeys(&app.keys);

    app.chip_thread = try std.Thread.spawn(.{}, struct {
        fn callback(chip: *Chip, should_close: *bool) void {
            while (!should_close.*) {
                chip.cycle() catch |err| {
                    should_close.* = true;
                    std.log.err("ChipError: {}", .{err});
                };
                std.time.sleep(1000000);
            }
        }
    }.callback, .{ &app.chip, &app.should_close });

    timer = try mach.Timer.start();

    const screen_multiplier = 10;
    try core.setOptions(.{
        .size_min = .{ .width = 20, .height = 20 },
        .width = Chip.DISPLAY_WIDTH * screen_multiplier,
        .height = Chip.DISPLAY_HEIGHT * screen_multiplier,
    });

    app.queue = core.device.getQueue();
    const sampler = core.device.createSampler(&.{
        .mag_filter = .nearest,
        .min_filter = .nearest,
    });
    app.chip_texture = core.device.createTexture(&.{
        .size = TEXTURE_SIZE,
        .format = .rgba8_unorm,
        .usage = .{
            .texture_binding = true,
            .copy_dst = true,
            .render_attachment = true,
        },
    });

    const vs_module = core.device.createShaderModule(&.{
        .label = "my vertex shader",
        .code = .{ .wgsl = @embedFile("vert.wgsl") },
    });
    defer vs_module.release();

    const fs_module = core.device.createShaderModule(&.{
        .label = "my fragment shader",
        .code = .{ .wgsl = @embedFile("frag.wgsl") },
    });
    defer fs_module.release();

    const blend = gpu.BlendState{
        .color = .{
            .operation = .add,
            .src_factor = .src_alpha,
            .dst_factor = .one_minus_src_alpha,
        },
        .alpha = .{
            .operation = .add,
            .src_factor = .one,
            .dst_factor = .zero,
        },
    };
    const color_target = gpu.ColorTargetState{
        .format = core.swap_chain_format,
        .blend = &blend,
        .write_mask = gpu.ColorWriteMask.all,
    };
    const fragment = gpu.FragmentState{
        .module = fs_module,
        .entry_point = "main",
        .targets = &.{color_target},
        .constants = null,
    };

    const pipeline_descriptor = gpu.RenderPipeline.Descriptor{
        .fragment = &fragment,
        .vertex = .{
            .module = vs_module,
            .entry_point = "main",
        },
        .primitive = .{
            .topology = .triangle_list,
            .cull_mode = .none,
        },
    };
    app.pipeline = core.device.createRenderPipeline(&pipeline_descriptor);

    app.bind_group = core.device.createBindGroup(
        &gpu.BindGroup.Descriptor{
            .layout = app.pipeline.getBindGroupLayout(0),
            .entries = &.{
                gpu.BindGroup.Entry.sampler(0, sampler),
                gpu.BindGroup.Entry.textureView(1, app.chip_texture.createView(&gpu.TextureView.Descriptor{})),
            },
        },
    );
}

pub fn deinit(app: *App, _: *mach.Core) void {
    app.bind_group.release();
    app.chip_texture.release();
    app.pipeline.release();
    app.queue.release();
    app.chip_thread.join();
}

pub fn update(app: *App, core: *mach.Core) !void {
    while (core.pollEvent()) |event| {
        switch (event) {
            .key_press, .key_release => |ev| {
                switch (ev.key) {
                    .space, .escape => app.should_close = true,

                    .one => app.keys[0x1] = event == .key_press,
                    .two => app.keys[0x2] = event == .key_press,
                    .three => app.keys[0x3] = event == .key_press,
                    .four => app.keys[0xc] = event == .key_press,

                    .q => app.keys[0x4] = event == .key_press,
                    .w => app.keys[0x5] = event == .key_press,
                    .e => app.keys[0x6] = event == .key_press,
                    .r => app.keys[0xd] = event == .key_press,

                    .a => app.keys[0x7] = event == .key_press,
                    .s => app.keys[0x8] = event == .key_press,
                    .d => app.keys[0x9] = event == .key_press,
                    .f => app.keys[0xe] = event == .key_press,

                    .z => app.keys[0xa] = event == .key_press,
                    .x => app.keys[0x0] = event == .key_press,
                    .c => app.keys[0xb] = event == .key_press,
                    .v => app.keys[0xf] = event == .key_press,

                    else => {},
                }
            },
            else => {},
        }
    }
    if (app.should_close)
        core.setShouldClose(true);
    if (app.chip.delay_timer > 0)
        app.chip.delay_timer -= 1;
    if (app.chip.sound_timer > 0)
        app.chip.sound_timer -= 1;
    try app.chip.cycle();

    const back_buffer_view = core.swap_chain.?.getCurrentTextureView();
    const color_attachment = gpu.RenderPassColorAttachment{
        .view = back_buffer_view,
        .clear_value = .{ .r = 0, .g = 0, .b = 0, .a = 0 },
        .load_op = .clear,
        .store_op = .store,
    };

    app.queue.writeTexture(&.{ .texture = app.chip_texture }, &DATA_LAYOUT, &TEXTURE_SIZE, u32, &app.chip.display);
    const encoder = core.device.createCommandEncoder(null);
    const render_pass_info = gpu.RenderPassEncoder.Descriptor{
        .color_attachments = &.{color_attachment},
    };

    const pass = encoder.beginRenderPass(&render_pass_info);
    pass.setPipeline(app.pipeline);
    pass.setBindGroup(0, app.bind_group, &.{});
    pass.draw(6, 1, 0, 0);
    pass.end();
    pass.release();

    var command = encoder.finish(null);
    encoder.release();

    app.queue.submit(&.{command});
    command.release();
    core.swap_chain.?.present();
    back_buffer_view.release();
}
