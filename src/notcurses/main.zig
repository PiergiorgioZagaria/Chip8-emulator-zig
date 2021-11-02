const std = @import("std");
const nc = @import("wrapper.zig");
const Chip = @import("chip.zig").Chip;
const App = @import("app.zig").App;
const SDL = @import("sdl2"); // TODO use this one for complete project
// const SDL = @import("sdl/wrapper/sdl.zig"); // use this for autocompletion
const clap = @import("clap.zig");
var page_allocator = std.heap.page_allocator;

//                 a b g r
const FG_COLOR = 0xff00ff00;
const BG_COLOR = 0xff000000;

pub fn main() anyerror!void {
    var arena = std.heap.ArenaAllocator.init(page_allocator);
    defer arena.deinit();

    var chip = try parseArguments();

    var app = try App.new(&chip.display, &arena.allocator);
    defer app.stop() catch unreachable;

    chip.set_chip_keys(&app.keys);

    try runChip(&chip, &app);
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

fn runChip(chip: *Chip, app: *App) !void {
    var render_tick: usize = 0;
    var timer_tick: usize = SDL.getTicks();

    while (!app.quit) {
        if (SDL.getTicks() - timer_tick >= 16) {
            timer_tick = SDL.getTicks();
            if (chip.delay_timer > 0) {
                chip.delay_timer -= 1;
            }

            if (chip.sound_timer > 0) {
                chip.sound_timer -= 1;
            }
        }

        app.input();
        chip.cycle() catch |err| {
            std.log.err("Caught {} during chip execution\n", .{err});
            app.quit_func();
        };
        SDL.delay(1);

        if (SDL.getTicks() - render_tick >= 16) {
            if (chip.sound_timer > 0) {
                app.beep(1);
            }

            try app.render();
            render_tick = SDL.getTicks();
        }
    }
}
