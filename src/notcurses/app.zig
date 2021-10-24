const std = @import("std");
const nc = @import("wrapper.zig");
const SDL = @import("sdl2"); // TODO use this one for complete project
// const SDL = @import("sdl/wrapper/sdl.zig");
pub const App = struct {
    nc_h: nc.nc_handle,
    nstd: nc.nc_plane,
    dimx: i32,
    dimy: i32,
    pixels: []u32,
    quit: bool,

    // Audio
    audio_device: SDL.c.SDL_AudioDeviceID = undefined,
    audio_sample_count: usize = 0,
    audio_buf: []f32 = undefined,

    keys: [16]bool = [_]bool{false} ** 16,

    allocator: *std.mem.Allocator,

    pub fn new(pixels: []u32, allocator: *std.mem.Allocator) !App {
        // SDL input
        try SDL.init(.{
            .audio = true,
        });
        // Audio
        var audio_device: SDL.c.SDL_AudioDeviceID = undefined;
        var audio_sample_count: usize = undefined;
        var audio_buf: []f32 = undefined;
        if (SDL.c.SDL_GetNumAudioDevices(0) <= 0) {
            audio_device = 0;
        } else {
            var want = SDL.c.SDL_AudioSpec{
                .freq = 64 * 60,
                .format = SDL.c.AUDIO_F32,
                .channels = 1,
                .samples = 64,
                .silence = undefined,
                .padding = undefined,
                .size = undefined,
                .callback = undefined,
                .userdata = undefined,
            };

            var have: SDL.c.SDL_AudioSpec = undefined;
            var device = SDL.c.SDL_OpenAudioDevice(null, 0, &want, &have, SDL.c.SDL_AUDIO_ALLOW_FORMAT_CHANGE);
            if (device == 0) {
                std.log.err("Caught SDL error, {s}.\n", .{SDL.getError()});
                return SDL.Error.SdlError;
            }
            audio_device = device;
            audio_sample_count = have.samples * have.channels;
            audio_buf = try allocator.alloc(f32, audio_sample_count * 4);
            SDL.c.SDL_PauseAudioDevice(device, 0);
        }
        var dimy: i32 = undefined;
        var dimx: i32 = undefined;
        var nc_h = try nc.nc_handle.init();

        var nstd = try nc_h.stddim_yx(&dimy, &dimx);

        return App{
            .nc_h = nc_h,
            .dimx = dimx,
            .dimy = dimy,
            .nstd = nstd,
            .pixels = pixels,
            .quit = false,
            .audio_device = audio_device,
            .audio_sample_count = audio_sample_count,
            .audio_buf = audio_buf,
            .allocator = allocator,
        };
    }
    pub fn quit_func(self: *App) void {
        self.quit = true;
    }
    pub fn input(self: *App) void {
        _ = self;
    }
    pub fn render(self: *App) !void {
        self.nstd.erase();
        var visual = try nc.nc_visual.from_rgba(@ptrCast([*]const u8, self.pixels.ptr), 32, 256, 64);
        defer visual.destroy();
        var tmp = try visual.visual_render(self.nc_h, nc.Blitter.pixel, nc.Scale.none_hires);
        defer tmp.destroy() catch unreachable;
        try self.nc_h.render();
    }
    pub fn stop(self: *App) !void {
        try self.nc_h.stop();
        SDL.quit();
        self.* = undefined;
    }
    /// Il volume deve essere nell'intorno [1 , 0]
    pub fn beep(self: *App, volume: f32) void {
        if (self.audio_device == 0) {
            return;
        }
        for (self.audio_buf) |*b| {
            b.* = volume;
        }
        _ = SDL.c.SDL_QueueAudio(self.audio_device, @ptrCast(*const c_void, self.audio_buf), @intCast(u32, self.audio_buf.len));
    }
};
