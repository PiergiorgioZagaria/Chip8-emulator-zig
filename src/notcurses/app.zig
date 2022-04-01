const std = @import("std");
const nc = @import("wrapper.zig");
const SDL = @import("sdl2"); // TODO use this one for complete project

pub const App = struct {
    var nc_h: nc.handle = undefined;
    var nstd: nc.plane = undefined;
    var ninput: nc.input = undefined;
    var dimx: i32 = undefined;
    var dimy: i32 = undefined;
    var pixels: []u32 = undefined;
    var quit: bool = false;

    // Audio
    // var audio_device: SDL.c.SDL_AudioDeviceID = undefined;
    var audio_device: ?SDL.AudioDevice = null;
    var audio_sample_count: usize = undefined;
    var audio_buf: []f32 = undefined;

    var keys: [16]bool = [_]bool{false} ** 16;

    pub fn new(pixels_array: []u32, allocator: std.mem.Allocator) !void {
        // SDL input
        try SDL.init(.{
            .audio = true,
        });
        // Audio
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
        pixels = pixels_array;
        nc_h = try nc.handle.init();
        nstd = try nc_h.stddim_yx(&dimy, &dimx);
        ninput = nc.input.new();
    }
    pub fn forceQuit() void {
        quit = true;
    }
    pub fn input() void {
        while (ninput.getc_nblock(nc_h) != 0) {
            switch (ninput.ni.id) {
                27 => quit = true,

                '1' => keys[1] = ninput.ni.evtype != 3,
                '2' => keys[2] = ninput.ni.evtype != 3,
                '3' => keys[3] = ninput.ni.evtype != 3,
                '4' => keys[0xc] = ninput.ni.evtype != 3,

                'q' => keys[4] = ninput.ni.evtype != 3,
                'w' => keys[5] = ninput.ni.evtype != 3,
                'e' => keys[6] = ninput.ni.evtype != 3,
                'r' => keys[0xd] = ninput.ni.evtype != 3,

                'a' => keys[7] = ninput.ni.evtype != 3,
                's' => keys[8] = ninput.ni.evtype != 3,
                'd' => keys[9] = ninput.ni.evtype != 3,
                'f' => keys[0xe] = ninput.ni.evtype != 3,

                'z' => keys[0xa] = ninput.ni.evtype != 3,
                'x' => keys[0] = ninput.ni.evtype != 3,
                'c' => keys[0xb] = ninput.ni.evtype != 3,
                'v' => keys[0xf] = ninput.ni.evtype != 3,
                else => {},
            }
        }
    }
    pub fn render() !void {
        nstd.erase();
        var visual = try nc.visual.from_rgba(@ptrCast([*]const u8, pixels.ptr), 32, 256, 64);
        defer visual.destroy();
        var tmp = try visual.visual_render(nc_h, nc.Blitter.default, nc.Scale.none);
        defer tmp.destroy() catch unreachable;
        try nc_h.render();
    }
    pub fn stop() !void {
        try nc_h.stop();
        SDL.quit();
    }
    /// Volume must be within [1 , 0]
    pub fn beep(volume: f32) void {
        if (audio_device) |dev| {
            for (audio_buf) |*b| {
                b.* = 1;
                _ = volume;
            }
            _ = SDL.c.SDL_QueueAudio(dev.id, @ptrCast(*const anyopaque, audio_buf), @intCast(u32, audio_buf.len));
        }
    }
    pub fn shouldQuit() bool {
        return quit;
    }
    pub fn getKeys() []bool {
        return keys[0..];
    }
};
