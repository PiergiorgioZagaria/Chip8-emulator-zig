const std = @import("std");
// const SDL = @import("sdl2"); // TODO use this one for complete project
const SDL = @import("sdl/wrapper/sdl.zig");

const WINDOW_WIDTH = 640;
const WINDOW_HEIGHT = 320;

pub const Scene = enum {
    // Display a StartingScene to choose wich exe to run or to go to settings scene
    // MAYBE
    // StartingScene,

    // Display settings
    // MAYBE
    //SettingsScene,

    /// Generic chip executing scene
    PlayingScene,
};

pub const App = struct {
    /// Handle to the sdl renderer, used to draw to the screen
    renderer: SDL.Renderer = undefined,
    /// Handle to the sdl window, should only be used in app.zig
    window: SDL.Window = undefined,

    scene: Scene = undefined,

    // Audio
    audio_device: SDL.c.SDL_AudioDeviceID = undefined,
    audio_sample_count: usize = 0,
    audio_buf: []f32 = undefined,

    allocator: *std.mem.Allocator = undefined,

    quit: bool = false,
    change_scene: bool = false,

    /// The Chip-8 inputs, the layout is described in chip.zig
    keys: [16]bool = [_]bool{false} ** 16,

    /// Init the engine with defaults
    pub fn initSDLdefault(self: *App, allocator: *std.mem.Allocator) !void {
        self.allocator = allocator;

        // Window
        try SDL.init(.{
            .video = true,
            .events = true,
            .audio = true,
        });
        self.window = try SDL.createWindow(
            "Chip-8 Emulator",
            .{ .centered = {} },
            .{ .centered = {} },
            WINDOW_WIDTH,
            WINDOW_HEIGHT,
            .{ .shown = true },
        );
        self.renderer = try SDL.createRenderer(self.window, null, .{ .present_vsync = true, .accelerated = true });

        // Audio
        if (SDL.c.SDL_GetNumAudioDevices(0) <= 0) {
            self.audio_device = 0;
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
            self.audio_device = device;
            self.audio_sample_count = have.samples * have.channels;
            self.audio_buf = try allocator.alloc(f32, self.audio_sample_count * 4);
            SDL.c.SDL_PauseAudioDevice(device, 0);
        }
    }

    pub fn deinitSDL(self: *App) void {
        self.renderer.destroy();
        self.window.destroy();
        self.* = undefined;
        SDL.quit();
    }

    pub fn handleInput(self: *App) void {
        while (SDL.pollEvent()) |ev| {
            switch (ev) {
                .quit => self.quit_func(),
                .key_down => |key| {
                    if (key.repeat == 0) {
                        switch (key.keysym.scancode) {
                            SDL.c.SDL_SCANCODE_ESCAPE => self.quit_func(),

                            SDL.c.SDL_SCANCODE_1 => self.keys[1] = true,
                            SDL.c.SDL_SCANCODE_2 => self.keys[2] = true,
                            SDL.c.SDL_SCANCODE_3 => self.keys[3] = true,
                            SDL.c.SDL_SCANCODE_4 => self.keys[0xc] = true,

                            SDL.c.SDL_SCANCODE_Q => self.keys[4] = true,
                            SDL.c.SDL_SCANCODE_W => self.keys[5] = true,
                            SDL.c.SDL_SCANCODE_E => self.keys[6] = true,
                            SDL.c.SDL_SCANCODE_R => self.keys[0xd] = true,

                            SDL.c.SDL_SCANCODE_A => self.keys[7] = true,
                            SDL.c.SDL_SCANCODE_S => self.keys[8] = true,
                            SDL.c.SDL_SCANCODE_D => self.keys[9] = true,
                            SDL.c.SDL_SCANCODE_F => self.keys[0xe] = true,

                            SDL.c.SDL_SCANCODE_Z => self.keys[0xa] = true,
                            SDL.c.SDL_SCANCODE_X => self.keys[0] = true,
                            SDL.c.SDL_SCANCODE_C => self.keys[0xb] = true,
                            SDL.c.SDL_SCANCODE_V => self.keys[0xf] = true,

                            else => std.debug.print("key pressed: {}\n", .{key.keysym.scancode}),
                        }
                    }
                },
                .key_up => |key| {
                    if (key.repeat == 0) {
                        switch (key.keysym.scancode) {
                            SDL.c.SDL_SCANCODE_1 => self.keys[1] = false,
                            SDL.c.SDL_SCANCODE_2 => self.keys[2] = false,
                            SDL.c.SDL_SCANCODE_3 => self.keys[3] = false,
                            SDL.c.SDL_SCANCODE_4 => self.keys[0xc] = false,

                            SDL.c.SDL_SCANCODE_Q => self.keys[4] = false,
                            SDL.c.SDL_SCANCODE_W => self.keys[5] = false,
                            SDL.c.SDL_SCANCODE_E => self.keys[6] = false,
                            SDL.c.SDL_SCANCODE_R => self.keys[0xd] = false,

                            SDL.c.SDL_SCANCODE_A => self.keys[7] = false,
                            SDL.c.SDL_SCANCODE_S => self.keys[8] = false,
                            SDL.c.SDL_SCANCODE_D => self.keys[9] = false,
                            SDL.c.SDL_SCANCODE_F => self.keys[0xe] = false,

                            SDL.c.SDL_SCANCODE_Z => self.keys[0xa] = false,
                            SDL.c.SDL_SCANCODE_X => self.keys[0] = false,
                            SDL.c.SDL_SCANCODE_C => self.keys[0xb] = false,
                            SDL.c.SDL_SCANCODE_V => self.keys[0xf] = false,
                            else => {},
                        }
                    }
                },
                else => {},
            }
        }
    }

    pub fn quit_func(self: *App) void {
        self.quit = true;
        self.change_scene = true;
    }
    /// You have to manually change scene, move scene management to engine
    pub fn change_scene_func(self: *App, scene: Scene) void {
        self.change_scene = true;
        self.scene = scene;
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
