const std = @import("std");
// const SDL = @import("sdl2"); // TODO use this one for complete project
const SDL = @import("sdl/wrapper/sdl.zig");

pub const App = struct {
    /// Handle to the sdl renderer, used to draw to the screen
    var renderer: SDL.Renderer = undefined;
    /// Handle to the sdl window, should only be used in app.zig
    var window: SDL.Window = undefined;

    var window_width: usize = 640;
    var window_height: usize = 320;

    // Audio
    var audio_device: SDL.c.SDL_AudioDeviceID = undefined;
    var audio_sample_count: usize = 0;
    var audio_buf: []f32 = undefined;

    var allocator: *std.mem.Allocator = undefined;

    var quit: bool = false;
    pub var debug: bool = false;
    pub var step: bool = false;
    pub var change_mode: bool = false;

    /// The Chip-8 inputs, the layout is described in chip.zig
    var keys: [16]bool = [_]bool{false} ** 16;

    /// Init the engine with defaults
    pub fn initSDLdefault(_allocator: *std.mem.Allocator) !void {
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
            .{ .shown = true },
        );
        renderer = try SDL.createRenderer(window, null, .{ .present_vsync = true, .accelerated = true });

        // Audio
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
    }

    pub fn deinitSDL() void {
        renderer.destroy();
        window.destroy();
        SDL.quit();
    }

    pub fn handleInput() void {
        while (SDL.pollEvent()) |ev| {
            switch (ev) {
                .quit => quit_func(),
                .key_down => |key| {
                    if (key.repeat == 0) {
                        switch (key.keysym.scancode) {
                            SDL.c.SDL_SCANCODE_ESCAPE => {
                                quit = true;
                                change_mode = true;
                            },

                            SDL.c.SDL_SCANCODE_1 => keys[1] = true,
                            SDL.c.SDL_SCANCODE_2 => keys[2] = true,
                            SDL.c.SDL_SCANCODE_3 => keys[3] = true,
                            SDL.c.SDL_SCANCODE_4 => keys[0xc] = true,

                            SDL.c.SDL_SCANCODE_Q => keys[4] = true,
                            SDL.c.SDL_SCANCODE_W => keys[5] = true,
                            SDL.c.SDL_SCANCODE_E => keys[6] = true,
                            SDL.c.SDL_SCANCODE_R => keys[0xd] = true,

                            SDL.c.SDL_SCANCODE_A => keys[7] = true,
                            SDL.c.SDL_SCANCODE_S => keys[8] = true,
                            SDL.c.SDL_SCANCODE_D => keys[9] = true,
                            SDL.c.SDL_SCANCODE_F => keys[0xe] = true,

                            SDL.c.SDL_SCANCODE_Z => keys[0xa] = true,
                            SDL.c.SDL_SCANCODE_X => keys[0] = true,
                            SDL.c.SDL_SCANCODE_C => keys[0xb] = true,
                            SDL.c.SDL_SCANCODE_V => keys[0xf] = true,

                            SDL.c.SDL_SCANCODE_SPACE => {
                                debug = !debug;
                                change_mode = true;
                            },
                            SDL.c.SDL_SCANCODE_TAB => step = true,

                            else => std.debug.print("key pressed: {}\n", .{key.keysym.scancode}),
                        }
                    }
                },
                .key_up => |key| {
                    if (key.repeat == 0) {
                        switch (key.keysym.scancode) {
                            SDL.c.SDL_SCANCODE_1 => keys[1] = false,
                            SDL.c.SDL_SCANCODE_2 => keys[2] = false,
                            SDL.c.SDL_SCANCODE_3 => keys[3] = false,
                            SDL.c.SDL_SCANCODE_4 => keys[0xc] = false,

                            SDL.c.SDL_SCANCODE_Q => keys[4] = false,
                            SDL.c.SDL_SCANCODE_W => keys[5] = false,
                            SDL.c.SDL_SCANCODE_E => keys[6] = false,
                            SDL.c.SDL_SCANCODE_R => keys[0xd] = false,

                            SDL.c.SDL_SCANCODE_A => keys[7] = false,
                            SDL.c.SDL_SCANCODE_S => keys[8] = false,
                            SDL.c.SDL_SCANCODE_D => keys[9] = false,
                            SDL.c.SDL_SCANCODE_F => keys[0xe] = false,

                            SDL.c.SDL_SCANCODE_Z => keys[0xa] = false,
                            SDL.c.SDL_SCANCODE_X => keys[0] = false,
                            SDL.c.SDL_SCANCODE_C => keys[0xb] = false,
                            SDL.c.SDL_SCANCODE_V => keys[0xf] = false,
                            else => {},
                        }
                    }
                },
                else => {},
            }
        }
    }

    pub fn quit_func() void {
        quit = true;
        change_mode = true;
    }
    pub fn should_quit() bool {
        return quit;
    }

    /// Il volume deve essere nell'intorno [1 , 0]
    pub fn beep(volume: f32) void {
        if (audio_device == 0) {
            return;
        }
        for (audio_buf) |*b| {
            b.* = volume;
        }
        _ = SDL.c.SDL_QueueAudio(audio_device, @ptrCast(*const c_void, audio_buf), @intCast(u32, audio_buf.len));
    }

    pub fn get_renderer() SDL.Renderer {
        return renderer;
    }
    pub fn get_window() SDL.Window {
        return window;
    }
    pub fn get_keys() []bool {
        return keys[0..];
    }

    pub fn window_normal_mode() void {
        window_width = 640;
        window_height = 320;
        SDL.c.SDL_SetWindowSize(App.get_window().ptr, @intCast(c_int, window_width), @intCast(c_int, window_height));
    }
    pub fn window_debug_mode() void {
        window_width = 1280;
        window_height = 320;
        SDL.c.SDL_SetWindowSize(App.get_window().ptr, @intCast(c_int, window_width), @intCast(c_int, window_height));
    }
};
