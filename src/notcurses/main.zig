const std = @import("std");
const nc = @import("wrapper.zig");
const Chip = @import("chip.zig").Chip;
const App = @import("app.zig").App;

//                 a b g r
const FG_COLOR = 0xff00ff00;
const BG_COLOR = 0xff000000;

pub fn main() anyerror!void {
    var chip = try Chip.init("roms/IBM Logo.ch8", FG_COLOR, BG_COLOR); // ../../roms/IBM Logo.ch8
    var app = try App.new(&chip.display);
    defer app.stop() catch unreachable;

    while (!app.quit) {
        app.input();
        try chip.cycle();
        try app.render();
    }
}
