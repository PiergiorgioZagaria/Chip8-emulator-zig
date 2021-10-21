const nc = @import("wrapper.zig");
pub const App = struct {
    nc_h: nc.nc_handle,
    ninput: nc.nc_input,
    nstd: nc.nc_plane,
    dimx: i32,
    dimy: i32,
    pixels: []u32,
    quit: bool,

    pub fn new(pixels: []u32) !App {
        var dimy: i32 = undefined;
        var dimx: i32 = undefined;
        var nc_h = try nc.nc_handle.init();

        var nstd = try nc_h.stddim_yx(&dimy, &dimx);

        return App{
            .nc_h = nc_h,
            .dimx = dimx,
            .dimy = dimy,
            .nstd = nstd,
            .ninput = nc.nc_input.new(),
            .pixels = pixels,
            .quit = false,
        };
    }
    pub fn input(self: *App) void {
        self.ninput.getc_nblock(self.nc_h);
        self.quit = self.ninput.ni.id == 27;
    }
    pub fn render(self: *App) !void {
        self.nstd.erase();
        var visual = try nc.nc_visual.from_rgba(@ptrCast([*]const u8, self.pixels.ptr), 32, 256, 64);
        defer visual.destroy();
        var tmp = try visual.visual_render(self.nc_h, nc.Blitter.pixel, nc.Scale.none_hires);
        defer tmp.destroy() catch unreachable;
        try self.nc_h.render();
    }
    pub fn stop(self: *App) !void {
        try self.nc_h.stop();
        self.* = undefined;
    }
};
