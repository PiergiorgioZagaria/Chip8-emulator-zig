const std = @import("std");
const nc = @import("wrapper.zig");
const Chip = @import("emu").Chip;
const App = @import("app.zig").App;
const SDL = @import("sdl2");
// const SDL = @import("sdl/wrapper/sdl.zig"); // use this for autocompletion
const clap = @import("clap");

//                 a b g r
const FG_COLOR = 0xff00ff00;
const BG_COLOR = 0xff000000;

pub fn main() anyerror!void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();

    var chip = try parseArguments();

    try App.new(&chip.display, arena.allocator());
    defer App.stop() catch unreachable;

    chip.set_chip_keys(App.getKeys());

    runChip(&chip) catch |err| {
        std.log.err("Caught {} during chip execution\n", .{err});
        App.forceQuit();
    };
}

fn parseArguments() !Chip {
    // First we specify what parameters our program can take.
    // We can use `parseParam` to parse a string to a `Param(Help)`
    const params = comptime clap.parseParamsComptime(
        \\-h, --help             Display this help and exit.
        \\-f, --file <str>       Run the rom on the emulator.
        \\<str>...
        \\
    );

    // Initalize our diagnostics, which can be used for reporting useful errors.
    var diag = clap.Diagnostic{};
    var res = clap.parse(clap.Help, &params, clap.parsers.default, .{
        .diagnostic = &diag,
    }) catch |err| {
        // Report useful error and exit
        diag.report(std.io.getStdErr().writer(), err) catch {};
        return err;
    };
    defer res.deinit();

    if (res.args.help) {
        try clap.help(std.io.getStdErr().writer(), clap.Help, &params);
        std.process.exit(0);
        return undefined;
    }
    if (res.args.file) |f| {
        return Chip.init(f, FG_COLOR, BG_COLOR) catch |err| {
            std.log.err("Caught {} during initialization.\n", .{err});
            try clap.help(std.io.getStdErr().writer(), clap.Help, &params);
            return err;
        };
    }
    if (res.positionals.len == 1) {
        for (res.positionals) |f| {
            return Chip.init(f, FG_COLOR, BG_COLOR) catch |err| {
                std.log.err("Caught {} during initialization.\n", .{err});
                try clap.help(std.io.getStdErr().writer(), clap.Help, &params);
                return err;
            };
        }
    }
    return try Chip.init("roms/IBM Logo.ch8", FG_COLOR, BG_COLOR);
}

fn runChip(chip: *Chip) !void {
    var render_tick: usize = 0;
    var timer_tick: usize = SDL.getTicks();

    while (!App.shouldQuit()) {
        if (SDL.getTicks() - timer_tick >= 16) {
            timer_tick = SDL.getTicks();
            if (chip.delay_timer > 0) {
                chip.delay_timer -= 1;
            }

            if (chip.sound_timer > 0) {
                chip.sound_timer -= 1;
            }
        }

        App.input();
        try chip.cycle();
        SDL.delay(1);

        if (SDL.getTicks() - render_tick >= 16) {
            if (chip.sound_timer > 0) {
                App.beep(1);
            }

            try App.render();
            render_tick = SDL.getTicks();
        }
    }
}
