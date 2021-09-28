const std = @import("std");
// const SDL = @import("sdl2"); // TODO use this one for complete project
const SDL = @import("sdl/wrapper/sdl.zig"); // use this for autocompletion
const clap = @import("clap/clap.zig");
var page_allocator = std.heap.page_allocator;

/// The "engine"
const App = @import("app.zig").App;
const Scene = @import("app.zig").Scene;
/// The emulated device
const Chip = @import("chip.zig").Chip;

// TODO Add debugging, change window size, emulator on the left, registers on the right
pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(page_allocator);
    defer arena.deinit();
    var scene = Scene.PlayingScene; // Maybe implement More scenes?
    var chip: Chip = try parseArguments();

    var app = App{};
    app.scene = scene;
    try app.initSDLdefault(&arena.allocator);
    defer app.deinitSDL();

    chip.keys = &app.keys;

    while (!app.quit) {
        switch (app.scene) {
            .PlayingScene => {
                try runChip(&chip, &app);
            },
            // else => {
            //     std.debug.warn("Not implemented yet.\n", .{});
            //     std.process.exit(1);
            // },
        }
        app.change_scene = false;
    }
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
        return Chip.init(f) catch |err| {
            // scene.* = Scene.StartingScene;
            std.log.err("Caught {} during initialization.\n", .{err});
            try clap.help(std.io.getStdErr().writer(), &params);
            std.process.exit(1);
            return undefined;
        };
    } else if (args.positionals().len == 1) {
        for (args.positionals()) |f| {
            return Chip.init(f) catch |err| {
                // scene.* = Scene.StartingScene;
                std.log.err("Caught {} during initialization.\n", .{err});
                try clap.help(std.io.getStdErr().writer(), &params);
                std.process.exit(1);
                return undefined;
            };
        }
    } else {
        // scene.* = Scene.StartingScene;
        return try Chip.init("roms/IBM Logo.ch8");
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

    var texture: SDL.Texture = try SDL.createTexture(app.renderer, SDL.Texture.Format.abgr8888, SDL.Texture.Access.streaming, 64, 32);

    while (!app.change_scene) {
        if (SDL.getTicks() - timer_tick >= 16) {
            timer_tick = SDL.getTicks();
            if (chip.delay_timer > 0) {
                chip.delay_timer -= 1;
            }

            if (chip.sound_timer > 0) {
                chip.sound_timer -= 1;
            }
        }

        app.handleInput();
        // Return to StartingScene and display error
        chip.cycle() catch |err| {
            std.log.err("Caught {} during chip execution\n", .{err});
            app.quit_func();
        };
        SDL.delay(1);

        if (SDL.getTicks() - render_tick >= 16) {
            if (chip.sound_timer > 0) {
                app.beep(1);
            }

            try app.renderer.setColorRGB(0, 0, 0);
            try app.renderer.clear();

            try texture.update(std.mem.sliceAsBytes(chip.display[0..]), 64 * 4, null);
            try app.renderer.copy(texture, null, null);

            // try app.renderer.setColorRGB(0xff, 0xff, 0xff);
            // for (chip.display) |val, i| {
            //     if (val) {
            //         try app.renderer.fillRect(SDL.Rectangle{ .x = @intCast(c_int, (i % 64) * 10), .y = @intCast(c_int, (i / 64) * 10), .width = 9, .height = 9 });
            //     }
            // }

            app.renderer.present();
            render_tick = SDL.getTicks();
        }
    }
}
