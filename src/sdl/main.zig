const std = @import("std");
const SDL = @import("sdl2");

/// The "engine"
const App = @import("app.zig").App;
/// The emulated device
const Chip = @import("emu");

//                 a b g r
const FG_COLOR = 0xff0000ff;
const BG_COLOR = 0xff000000;

pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    var chip: Chip = undefined;
    try chip.parseArguments(FG_COLOR, BG_COLOR);
    chip.initRand();

    try App.initSDLdefault(arena.allocator());
    defer App.deinitSDL();

    chip.setChipKeys(&App.keys);

    try runChip(&chip);
}

fn runChip(chip: *Chip) !void {
    var render_tick: usize = 0;
    var timer_tick: usize = SDL.getTicks();

    var fg_color = [3]f32{
        @intToFloat(f32, FG_COLOR & 0xff) / 255, // r
        @intToFloat(f32, (FG_COLOR >> 8) & 0xff) / 255, // g
        @intToFloat(f32, (FG_COLOR >> 16) & 0xff) / 255, // b
    };
    var bg_color = [3]f32{
        @intToFloat(f32, BG_COLOR & 0xff) / 255, // r
        @intToFloat(f32, (BG_COLOR >> 8) & 0xff) / 255, // g
        @intToFloat(f32, (BG_COLOR >> 16) & 0xff) / 255, // b
    };

    try App.initTexture();
    while (!App.should_quit()) {
        switch (App.status) {
            .debug => {
                App.window_debug_mode();
                std.log.info("You entered debug mode\n", .{});
                while (!App.change_mode) {
                    App.handleInput();
                    if (!App.step_mode or App.step) {
                        if (SDL.getTicks() - timer_tick >= 16) {
                            timer_tick = SDL.getTicks();
                            if (chip.delay_timer > 0) {
                                chip.delay_timer -= 1;
                            }

                            if (chip.sound_timer > 0) {
                                chip.sound_timer -= 1;
                            }
                        }
                        App.step = false;
                        chip.cycle() catch |err| {
                            std.log.err("Caught {} during chip execution\n", .{err});
                            App.quit_func();
                        };
                    }

                    SDL.delay(1);
                    if (SDL.getTicks() - render_tick >= 16) {
                        if (chip.sound_timer > 0) {
                            App.beep(1);
                        }
                        try App.showEmu(chip.display[0..]);
                        var updated_colors = false;
                        try App.showGui(&fg_color, &bg_color, &updated_colors);
                        if (updated_colors) {
                            chip.fg_color = (0xff << 24) | (@floatToInt(u32, fg_color[2] * 255) << 16) | (@floatToInt(u32, fg_color[1] * 255) << 8) | (@floatToInt(u32, fg_color[0] * 255));
                            chip.bg_color = (0xff << 24) | (@floatToInt(u32, bg_color[2] * 255) << 16) | (@floatToInt(u32, bg_color[1] * 255) << 8) | (@floatToInt(u32, bg_color[0] * 255));
                            chip.updateColors();
                        }

                        App.renderer.present();
                        render_tick = SDL.getTicks();
                    }
                }
            },
            .normal => {
                App.window_normal_mode();
                std.log.info("You are in normal mode\n", .{});
                while (!App.change_mode) {
                    if (SDL.getTicks() - timer_tick >= 16) {
                        timer_tick = SDL.getTicks();
                        if (chip.delay_timer > 0) {
                            chip.delay_timer -= 1;
                        }

                        if (chip.sound_timer > 0) {
                            chip.sound_timer -= 1;
                        }
                    }

                    App.handleInput();
                    chip.cycle() catch |err| {
                        std.log.err("Caught {} during chip execution\n", .{err});
                        App.quit_func();
                    };
                    SDL.delay(1);

                    if (SDL.getTicks() - render_tick >= 16) {
                        if (chip.sound_timer > 0) {
                            App.beep(1);
                        }
                        try App.showEmu(chip.display[0..]);

                        App.renderer.present();
                        render_tick = SDL.getTicks();
                    }
                }
            },
        }
        App.change_mode = false;
    }
}
