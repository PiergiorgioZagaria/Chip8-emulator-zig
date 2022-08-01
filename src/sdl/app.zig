const std = @import("std");
const SDL = @import("sdl2");
const c = @import("c.zig").c;
const theme = @import("theme.zig");

pub const App = struct {
    /// Handle to the sdl renderer, used to draw to the screen
    pub var renderer: SDL.Renderer = undefined;
    /// Handle to the sdl window, should only be used in app.zig
    pub var window: SDL.Window = undefined;

    var io: *c.ImGuiIO = undefined;
    var context: *c.ImGuiContext = undefined;
    // var font: *c.ImFont = undefined;
    // var bg_color: c.Color = undefined;

    var window_width: usize = 640;
    var window_height: usize = 320;

    // Audio
    var audio_device: ?SDL.AudioDevice = null;
    var audio_sample_count: usize = 0;
    var audio_buf: []f32 = undefined;

    var allocator: std.mem.Allocator = undefined;

    var quit: bool = false;
    pub var status = State.normal;

    pub var step = false;
    pub var step_mode = true;
    pub var change_mode = false;
    var show_input_header = true;

    // Text for debugging
    var font_file: []u8 = "/home/Zargio/.local/share/fonts/Hack Regular Nerd Font Complete.ttf";
    /// The Chip-8 inputs, the layout is described in chip.zig
    pub var keys: [16]bool = [_]bool{false} ** 16;
    var texture: SDL.Texture = undefined;
    var button_texture_active: SDL.Texture = undefined;
    var button_texture_inactive: SDL.Texture = undefined;

    /// Init the engine with defaults
    pub fn initSDLdefault(_allocator: std.mem.Allocator) !void {
        allocator = _allocator;

        // Window
        try SDL.init(.{
            .video = true,
            .events = true,
            .audio = true,
        });
        window = try SDL.createWindow(
            "Chip-8 Emulator",
            .{ .centered = {} },
            .{ .centered = {} },
            window_width,
            window_height,
            .{},
        );
        renderer = try SDL.createRenderer(window, null, .{ .present_vsync = true, .accelerated = true });

        // Initialize imgui
        context = c.igCreateContext(null);
        // theme.setImguiThemeSolarized(&c.igGetStyle().*.Colors);
        theme.setImguiThemeCyberpunk(&c.igGetStyle().*.Colors);
        // c.igStyleColorsDark(null);
        io = c.igGetIO();
        // var text_pixels: [*c]u8 = undefined;
        // var text_w: i32 = undefined;
        // var text_h: i32 = undefined;
        // c.ImFontAtlas_GetTexDataAsRGBA32(io.Fonts, &text_pixels, &text_w, &text_h, null);
        // font = c.ImFontAtlas_AddFontFromFileTTF(io.Fonts, "assets/Hack Regular Nerd Font Complete Mono.ttf", 15.0, null, c.ImFontAtlas_GetGlyphRangesDefault(io.Fonts));
        // _ = c.ImFontAtlas_Build(io.Fonts);
        io.DisplaySize = .{ .x = @intToFloat(f32, window_width), .y = @intToFloat(f32, window_height) };
        io.DeltaTime = 1.0 / 60.0;
        io.ConfigFlags |= c.ImGuiConfigFlags_DockingEnable;
        if (!c.ImGui_ImplSDL2_InitForSDLRenderer(@ptrCast(*c.SDL_Window, window.ptr), @ptrCast(*c.SDL_Renderer, renderer.ptr)))
            std.debug.panic("", .{});
        if (!c.ImGui_ImplSDLRenderer_Init(@ptrCast(*c.SDL_Renderer, renderer.ptr)))
            std.debug.panic("", .{});
        button_texture_active = try SDL.createTexture(renderer, .abgr8888, .static, 2, 2);
        button_texture_inactive = try SDL.createTexture(renderer, .abgr8888, .static, 2, 2);
        try button_texture_active.update(std.mem.sliceAsBytes(&[_]u32{ 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff }), 2 * 4, null);
        try button_texture_inactive.update(std.mem.sliceAsBytes(&[_]u32{ 0xffff0000, 0xffff0000, 0xffff0000, 0xffff0000 }), 2 * 4, null);
        if (SDL.openAudioDevice(.{
            .desired_spec = .{
                .sample_rate = 64 * 60,
                .buffer_format = SDL.AudioFormat.@"f32",
                .channel_count = 1,
                .buffer_size_in_frames = 64,
                .callback = null,
                // .callback = (struct {
                //     fn call(userdata: ?*anyopaque, buf: [*c]u8, size: c_int) callconv(.C) void {
                //         _ = userdata;
                //         var i: c_int = 0;
                //         while (i < size) : (i += 1) {
                //             buf[@intCast(usize, i)] = 10;
                //         }
                //     }
                // }).call,
                .userdata = null,
            },
            .allowed_changes_from_desired = .{ .buffer_format = true },
        })) |dev| {
            audio_device = dev.device;
            var have = dev.obtained_spec;
            audio_sample_count = @intCast(usize, have.buffer_size_in_frames * have.channel_count);
            audio_buf = try allocator.alloc(f32, audio_sample_count * 4);
            dev.device.pause(false);
        } else |err| {
            std.log.err("Failed to open audio device: {}", .{err});
        }
    }

    pub fn deinitSDL() void {
        c.ImGui_ImplSDLRenderer_Shutdown();
        c.ImGui_ImplSDL2_Shutdown();
        renderer.destroy();
        window.destroy();
        SDL.quit();
    }

    pub fn handleInput() void {
        var ev: SDL.c.SDL_Event = undefined;
        while (SDL.c.SDL_PollEvent(&ev) != 0) {
            _ = c.ImGui_ImplSDL2_ProcessEvent(@ptrCast(*const c.union_SDL_Event, &ev));
            switch (SDL.Event.from(ev)) {
                .quit => quit = true,
                .key_down => |key| {
                    if (!key.is_repeat) {
                        switch (key.scancode) {
                            .escape => {
                                quit = true;
                                change_mode = true;
                            },
                            .@"1" => keys[1] = true,
                            .@"2" => keys[2] = true,
                            .@"3" => keys[3] = true,
                            .@"4" => keys[0xc] = true,

                            .q => keys[4] = true,
                            .w => keys[5] = true,
                            .e => keys[6] = true,
                            .r => keys[0xd] = true,

                            .a => keys[7] = true,
                            .s => keys[8] = true,
                            .d => keys[9] = true,
                            .f => keys[0xe] = true,

                            .z => keys[0xa] = true,
                            .x => keys[0] = true,
                            .c => keys[0xb] = true,
                            .v => keys[0xf] = true,

                            .space => {
                                switch (status) {
                                    .normal => status = .debug,
                                    .debug => status = .normal,
                                }
                                change_mode = true;
                            },
                            .tab => step = true,

                            else => {},
                        }
                    }
                },
                .key_up => |key| {
                    if (!key.is_repeat) {
                        switch (key.scancode) {
                            .@"1" => keys[1] = false,
                            .@"2" => keys[2] = false,
                            .@"3" => keys[3] = false,
                            .@"4" => keys[0xc] = false,

                            .q => keys[4] = false,
                            .w => keys[5] = false,
                            .e => keys[6] = false,
                            .r => keys[0xd] = false,

                            .a => keys[7] = false,
                            .s => keys[8] = false,
                            .d => keys[9] = false,
                            .f => keys[0xe] = false,

                            .z => keys[0xa] = false,
                            .x => keys[0] = false,
                            .c => keys[0xb] = false,
                            .v => keys[0xf] = false,
                            else => {},
                        }
                    }
                },
                else => {},
            }
        }
    }

    pub fn showGui(fg_color: *[3]f32, bg_color: *[3]f32, updated_colors: *bool) !void {
        c.ImGui_ImplSDLRenderer_NewFrame();
        c.ImGui_ImplSDL2_NewFrame();
        c.igNewFrame();

        // var dockspace_id = c.igGetID_Str("HUB_Dockspace");
        const viewport = c.igGetMainViewport();
        _ = c.igDockSpaceOverViewport(viewport, c.ImGuiDockNodeFlags_PassthruCentralNode, c.ImGuiWindowClass_ImGuiWindowClass());

        _ = c.igBegin("Emu console", null, c.ImGuiWindowFlags_AlwaysVerticalScrollbar);
        {
            if (c.igCollapsingHeader_TreeNodeFlags("Input", 0)) {
                const texture_size = c.ImVec2{ .x = 32, .y = 32 };
                const uv0 = c.ImVec2{ .x = 0, .y = 0 };
                const uv1 = c.ImVec2{ .x = 1, .y = 1 };
                const tint_color = c.ImVec4{ .x = 1, .y = 1, .z = 1, .w = 1 };
                const tex_bg_color = c.ImVec4{ .x = 0, .y = 0, .z = 0, .w = 0 };
                const indexes = [_]u8{ 1, 2, 3, 0xc, 4, 5, 6, 0xd, 7, 8, 9, 0xe, 0xa, 0, 0xb, 0xf };
                var i: u8 = undefined;
                var j: u8 = 0;
                while (j < 4) : (j += 1) {
                    i = 0;
                    while (i < 4) : (i += 1) {
                        if (keys[indexes[j * 4 + i]]) {
                            c.igImage(button_texture_active.ptr, texture_size, uv0, uv1, tint_color, tex_bg_color);
                        } else {
                            c.igImage(button_texture_inactive.ptr, texture_size, uv0, uv1, tint_color, tex_bg_color);
                        }
                        c.igSameLine(0, 2);
                    }
                    c.igNewLine();
                }
            }
            if (c.igCollapsingHeader_TreeNodeFlags("Step mode", 0)) {
                _ = c.igCheckbox("Step mode active", &step_mode);
                if (c.igButton("Step", .{ .x = 40, .y = 20 }))
                    step = true;
            }
            if (c.igCollapsingHeader_TreeNodeFlags("CPU state", 0)) {
                updated_colors.* = c.igColorEdit3("FG color", &fg_color[0], 0);
                updated_colors.* = c.igColorEdit3("BG color", &bg_color[0], 0) or updated_colors.*;
            }
            // if (c.igCollapsingHeader_TreeNodeFlags("Memory", 0)) {
            // }
        }
        c.igEnd();
        // if (show_demo_window)
        if (comptime std.debug.runtime_safety)
            c.igShowDemoWindow(null);

        // c.igPopFont();
        c.igRender();
        c.ImGui_ImplSDLRenderer_RenderDrawData(c.igGetDrawData());
    }

    pub fn quit_func() void {
        quit = true;
        change_mode = true;
    }
    pub fn should_quit() bool {
        return quit;
    }

    pub fn initTexture() !void {
        texture = try SDL.createTexture(renderer, .abgr8888, .streaming, 64, 32);
    }

    /// You need to call initTexture once before you can call this
    pub fn showEmu(display: []const u32) !void {
        const src_rect = SDL.Rectangle{
            .x = 0,
            .y = 0,
            .width = 64,
            .height = 32,
        };
        const dst_rect = SDL.Rectangle{
            .x = 0,
            .y = 0,
            .width = 640,
            .height = 320,
        };
        try renderer.setColorRGB(0, 0, 0);
        try renderer.clear();

        try texture.update(std.mem.sliceAsBytes(display[0..]), 64 * 4, null);
        try renderer.copy(texture, dst_rect, src_rect);
    }

    pub fn beep(volume: f32) void {
        if (audio_device) |dev| {
            for (audio_buf) |*b| {
                b.* = 1;
                _ = volume;
            }
            _ = SDL.c.SDL_QueueAudio(dev.id, @ptrCast(*const anyopaque, audio_buf), @intCast(u32, audio_buf.len));
        }
    }

    pub fn window_normal_mode() void {
        window_width = 640;
        window_height = 320;
        SDL.c.SDL_SetWindowSize(window.ptr, @intCast(c_int, window_width), @intCast(c_int, window_height));
    }
    pub fn window_debug_mode() void {
        window_width = 1280;
        window_height = 320;
        SDL.c.SDL_SetWindowSize(window.ptr, @intCast(c_int, window_width), @intCast(c_int, window_height));
    }
};

const State = enum {
    debug,
    normal,
};
