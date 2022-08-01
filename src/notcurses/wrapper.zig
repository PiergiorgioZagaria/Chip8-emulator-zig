const std = @import("std");
pub const c = @cImport(@cInclude("notcurses/notcurses.h"));

pub const NcError = error{
    InitError,
    InitStdPlaneError,
    StopError,
    RenderError,
    SetFgError,
    PlanePutCharError,
    PlanePutStrError,
    DestroyPlaneError,
    VisualRenderError,
    VisualFromFileError,
    VisualFromRgbaError,
};

pub const handle = struct {
    ptr: *c.notcurses,

    pub fn init() NcError!handle {
        var nc = c.notcurses_init(null, c.stdout);
        if (nc) |v| {
            return handle{ .ptr = v };
        } else {
            return error.InitError;
        }
    }

    pub fn stddim_yx(self: handle, y: *i32, x: *i32) NcError!plane {
        var nstd = c.notcurses_stddim_yx(self.ptr, @ptrCast([*]c_uint, y), @ptrCast([*]c_uint, x));
        if (nstd) |v| {
            return plane{ .ptr = v };
        } else {
            return error.InitStdPlaneError;
        }
    }

    pub fn stop(self: handle) NcError!void {
        if (c.notcurses_stop(self.ptr) != 0) {
            return error.StopError;
        }
    }
    pub fn render(self: handle) NcError!void {
        if (c.notcurses_render(self.ptr) != 0) {
            return error.RenderError;
        }
    }
};

pub const plane = struct {
    ptr: *c.ncplane,
    pub fn set_fg_rgb(self: plane, color: u32) NcError!void {
        if (c.ncplane_set_fg_rgb(self.ptr, color) != 0) {
            return error.SetFgError;
        }
    }
    pub fn putchar_yx(self: plane, y: i32, x: i32, char: u8) NcError!void {
        if (c.ncplane_putchar_yx(self.ptr, y, x, char) == 0) {
            return error.PlanePutCharError;
        }
    }
    pub fn putstr_yx(self: plane, y: i32, x: i32, str: []const u8) NcError!void {
        if (c.ncplane_putstr_yx(self.ptr, y, x, str.ptr) == 0) {
            return error.PlanePutStrError;
        }
    }
    pub fn putstrf_yx(self: plane, y: i32, x: i32, comptime str: []const u8, args: anytype) !void {
        var buf: [4096]u8 = [_]u8{0} ** 4096;
        try self.putstr_yx(y, x, try std.fmt.bufPrintZ(&buf, str, args));
    }
    pub fn destroy(self: plane) NcError!void {
        if (c.ncplane_destroy(self.ptr) != 0) {
            return error.DestroyPlaneError;
        }
    }
    pub fn erase(self: plane) void {
        c.ncplane_erase(self.ptr);
    }
};

pub const input = struct {
    ni: c.ncinput,
    pub fn new() input {
        return input{ .ni = std.mem.zeroes(c.struct_ncinput) };
    }
    pub fn get_nblock(self: *input, nc: handle) u32 {
        return c.notcurses_get_nblock(nc.ptr, &self.ni);
    }
};

pub const Blitter = enum(u32) {
    default = c.NCBLIT_DEFAULT,
    blit_1x1 = c.NCBLIT_1x1,
    blit_2x1 = c.NCBLIT_2x1,
    blit_2x2 = c.NCBLIT_2x2,
    blit_3x2 = c.NCBLIT_3x2,
    braille = c.NCBLIT_BRAILLE,
    pixel = c.NCBLIT_PIXEL,
    blit_4x1 = c.NCBLIT_4x1,
    blit_8x1 = c.NCBLIT_8x1,
};

pub const Scale = enum(u32) {
    none = c.NCSCALE_NONE,
    scale = c.NCSCALE_SCALE,
    stretch = c.NCSCALE_STRETCH,
    none_hires = c.NCSCALE_NONE_HIRES,
    scale_hires = c.NCSCALE_SCALE_HIRES,
};

pub const visual = struct {
    ptr: *c.ncvisual,

    pub fn from_file(file: []const u8) NcError!visual {
        return visual{
            .ptr = c.ncvisual_from_file(file.ptr) orelse return error.VisualFromFileError,
        };
    }

    pub fn from_rgba(rgba: [*]const u8, rows: i32, stride: i32, cols: i32) NcError!visual {
        return visual{
            .ptr = c.ncvisual_from_rgba(rgba, rows, stride, cols) orelse return error.VisualFromRgbaError,
        };
    }

    pub fn visual_blit(self: visual, nc: handle, blit: Blitter, scaling: Scale) NcError!plane {
        const opts = c.ncvisual_options{
            .scaling = @enumToInt(scaling),
            .blitter = @enumToInt(blit),
            .n = c.notcurses_stdplane(nc.ptr),
            .y = 0,
            .x = 0,
            .begy = 0,
            .begx = 0,
            .leny = 0,
            .lenx = 0,
            .flags = 0,
            .transcolor = 0,
            .pxoffy = 0,
            .pxoffx = 0,
        };
        return plane{
            .ptr = c.ncvisual_blit(nc.ptr, self.ptr, &opts) orelse return error.VisualRenderError,
        };
    }

    pub fn destroy(self: visual) void {
        c.ncvisual_destroy(self.ptr);
    }
};
