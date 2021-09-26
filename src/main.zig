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
    var scene = Scene.PlayingScene;
    var chip: Chip = try parseArguments(&scene);

    var app = App{};
    app.scene = scene;
    try app.initSDLdefault(&arena.allocator);
    defer app.deinitSDL();

    // var display_thread = try std.Thread.spawn(.{}, displayThread, .{ &app, &chip });
    // defer display_thread.join();
    while (!app.quit) {
        switch (app.scene) {
            .PlayingScene => {
                try runChip(&chip, &app);
            },
            else => {
                std.debug.warn("Not implemented yet.\n", .{});
                std.process.exit(1);
            },
        }
        app.change_scene = false;
    }
}

fn parseArguments(scene: *Scene) !Chip {
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
            scene.* = Scene.StartingScene;
            std.log.err("Caught {} during initialization.\n", .{err});
            try clap.help(std.io.getStdErr().writer(), &params);
            return undefined;
        };
    } else if (args.positionals().len == 1) {
        for (args.positionals()) |f| {
            return Chip.init(f) catch |err| {
                scene.* = Scene.StartingScene;
                std.log.err("Caught {} during initialization.\n", .{err});
                try clap.help(std.io.getStdErr().writer(), &params);
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
    var before = std.time.milliTimestamp();
    var delta: i64 = undefined;
    var now: i64 = undefined;

    while (!app.change_scene) {
        app.handleInput();
        chip.keys = app.keys;

        // Return to StartingScene and display error
        chip.cycle() catch |err| {
            std.log.err("Caught {} during chip execution\n", .{err});
            app.quit_func();
        };

        // TODO better sound?
        if (chip.sound_timer > 0) {
            app.beep(1);
        }

        if (chip.update_display) {
            chip.update_display = false;
            try app.renderer.setColorRGB(0, 0, 0);
            try app.renderer.clear();

            try app.renderer.setColorRGB(0xff, 0xff, 0xff);
            for (chip.display) |val, i| {
                if (val) {
                    try app.renderer.fillRect(SDL.Rectangle{ .x = @intCast(c_int, (i % 64) * 10), .y = @intCast(c_int, (i / 64) * 10), .width = 9, .height = 9 });
                }
            }

            app.renderer.present();
        }

        // TODO handle update time better?
        now = std.time.milliTimestamp();
        delta = now - before;
        before = now;
        if (delta <= 16) {
            std.time.sleep(@bitCast(u64, (16 - delta) * 1000));
        } else {
            std.log.warn("Under 60 FPS, FPS: {}\n", .{@divFloor(1000, delta)});
            std.log.warn("Delta: {}\n", .{delta});
        }
    }
}

fn displayThread(app: *App, chip: *Chip) !void {
    while (!app.quit) {
        switch (app.scene) {
            .PlayingScene => {
                try displayChip(chip, app);
            },
            else => {
                std.debug.warn("Not implemented yet.\n", .{});
                std.process.exit(1);
            },
        }
    }
}

fn displayChip(chip: *Chip, app: *const App) !void {
    var before = std.time.milliTimestamp();
    var delta: i64 = undefined;
    var now: i64 = undefined;
    while (!app.change_scene) {
        if (chip.update_display) {
            chip.update_display = false;
            try app.renderer.setColorRGB(0, 0, 0);
            try app.renderer.clear();

            try app.renderer.setColorRGB(0xff, 0xff, 0xff);
            for (chip.display) |val, i| {
                if (val) {
                    try app.renderer.fillRect(SDL.Rectangle{ .x = @intCast(c_int, (i % 64) * 10), .y = @intCast(c_int, (i / 64) * 10), .width = 9, .height = 9 });
                }
            }

            app.renderer.present();
        }
        // TODO handle update time better?
        now = std.time.milliTimestamp();
        delta = now - before;
        before = now;
        if (delta <= 16) {
            std.time.sleep(@bitCast(u64, (16 - delta) * 1000));
        }
    }
}
