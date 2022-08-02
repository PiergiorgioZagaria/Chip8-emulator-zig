const std = @import("std");
const Chip = @import("emu");
const App = @import("app.zig");

//                 a b g r
const FG_COLOR = 0xff00ff00;
const BG_COLOR = 0xff000000;

pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();

    var chip: Chip = undefined;
    try chip.parseArguments(FG_COLOR, BG_COLOR);
    chip.initRand();

    try App.new(&chip.display, arena.allocator());
    defer App.stop() catch unreachable;

    chip.setChipKeys(App.getKeys());

    runChip(&chip) catch |err| {
        std.log.err("Caught {} during chip execution\n", .{err});
        App.forceQuit();
    };
}

fn runChip(chip: *Chip) !void {
    var timer = try std.time.Timer.start();
    var render_tick: usize = 0;
    var timer_tick: usize = timer.read();

    while (!App.shouldQuit()) {
        if (timer.read() - timer_tick >= 16666667) {
            timer_tick = timer.read();
            if (chip.delay_timer > 0) {
                chip.delay_timer -= 1;
            }

            if (chip.sound_timer > 0) {
                chip.sound_timer -= 1;
            }
        }

        App.input();
        try chip.cycle();
        std.time.sleep(1000000);

        if (timer.read() - render_tick >= 16666667) {
            if (chip.sound_timer > 0) {
                App.beep(1);
            }

            try App.render();
            render_tick = timer.read();
        }
    }
}
