const std = @import("std");
// const SDL = @import("sdl2"); // TODO use this one for complete project
const SDL = @import("sdl/wrapper/sdl.zig"); // use this for autocompletion
const clap = @import("clap.zig");
var page_allocator = std.heap.page_allocator;

/// The "engine"
const App = @import("app.zig").App;
/// The emulated device
const Chip = @import("chip.zig").Chip;

//                 a b g r
const FG_COLOR = 0xff0000ff;
const BG_COLOR = 0xff000000;

// TODO Add debugging, change window size, emulator on the left, registers on the right
pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(page_allocator);
    defer arena.deinit();
    var chip: Chip = try parseArguments();

    try App.initSDLdefault(&arena.allocator);
    defer App.deinitSDL();

    // chip.keys = &app.keys;
    chip.set_chip_keys(App.get_keys());

    try runChip(&chip);
}

fn parseArguments() !Chip {
    // First we specify what parameters our program can take.
    // We can use `parseParam` to parse a string to a `Param(Help)`
    const params = comptime [_]clap.Param(clap.Help){
        clap.parseParam("-h, --help             Display this help and exit.              ") catch unreachable,
        clap.parseParam("-f, --file <STR>       Run the rom on the emulator.") catch unreachable,
        clap.parseParam("<POS>") catch unreachable,
    };

    // Initalize our diagnostics, which can be used for reporting useful errors.
    var diag = clap.Diagnostic{};
    var args = clap.parse(clap.Help, &params, .{ .diagnostic = &diag }) catch |err| {
        // Report useful error and exit
        diag.report(std.io.getStdErr().writer(), err) catch {};
        return err;
    };
    defer args.deinit();

    if (args.flag("--help")) {
        try clap.help(std.io.getStdErr().writer(), &params);
        std.process.exit(0);
        return undefined;
    } else if (args.option("--file")) |f| {
        return Chip.init(f, FG_COLOR, BG_COLOR) catch |err| {
            std.log.err("Caught {} during initialization.\n", .{err});
            try clap.help(std.io.getStdErr().writer(), &params);
            std.process.exit(1);
            return undefined;
        };
    } else if (args.positionals().len == 1) {
        for (args.positionals()) |f| {
            return Chip.init(f, FG_COLOR, BG_COLOR) catch |err| {
                std.log.err("Caught {} during initialization.\n", .{err});
                try clap.help(std.io.getStdErr().writer(), &params);
                std.process.exit(1);
                return undefined;
            };
        }
    } else {
        return try Chip.init("roms/IBM Logo.ch8", FG_COLOR, BG_COLOR);
        // var chip: Chip = try Chip.init("roms/test_opcode.ch8");
        // var chip: Chip = try Chip.init("roms/BC_test.ch8");
        // var chip: Chip = try Chip.init("roms/PONG");
        // var chip: Chip = try Chip.init("roms/CAVE");
        // var chip: Chip = try Chip.init("roms/Maze");
        // var chip: Chip = try Chip.init("roms/TANK");
        // var chip: Chip = try Chip.init("roms/TETRIS");
        // var chip: Chip = try Chip.init("roms/test.ch8");

    }
    return undefined;
}

fn runChip(chip: *Chip) !void {
    var render_tick: usize = 0;
    var timer_tick: usize = SDL.getTicks();

    var texture: SDL.Texture = try SDL.createTexture(App.get_renderer(), SDL.Texture.Format.abgr8888, SDL.Texture.Access.streaming, 64, 32);
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

    while (!App.should_quit()) {
        if (App.debug) {
            App.window_debug_mode();
            std.log.info("You entered debug mode\n", .{});
            while (!App.change_mode) {
                App.handleInput();
                if (App.step) {
                    App.step = false;
                    chip.cycle() catch |err| {
                        std.log.err("Caught {} during chip execution\n", .{err});
                        App.quit_func();
                    };
                    try App.get_renderer().setColorRGB(0, 0, 0);
                    try App.get_renderer().clear();

                    try texture.update(std.mem.sliceAsBytes(chip.display[0..]), 64 * 4, null);
                    try App.get_renderer().copy(texture, dst_rect, src_rect);

                    App.get_renderer().present();
                }
                SDL.delay(100);
            }
        } else {
            App.window_normal_mode();
            std.log.info("You are in standard mode\n", .{});
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

                    try App.get_renderer().setColorRGB(0, 0, 0);
                    try App.get_renderer().clear();

                    try texture.update(std.mem.sliceAsBytes(chip.display[0..]), 64 * 4, null);
                    try App.get_renderer().copy(texture, dst_rect, src_rect);

                    App.get_renderer().present();
                    render_tick = SDL.getTicks();
                }
            }
        }
        App.change_mode = false;
    }
}
