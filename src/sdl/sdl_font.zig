const ttf = @cImport(@cInclude("SDL2/SDL_ttf.h"));
// const SDL = @import("sdl2"); // TODO use this one for complete project
const SDL = @import("sdl/wrapper/sdl.zig");

const FontError = error{
    InitError,
    OpenFontError,
};
pub const Font = struct {
    ptr: *ttf.TTF_Font,
    /// Call once to initialize the SDL_ttf library
    pub fn init() FontError!void {
        if (ttf.TTF_Init() != 0) {
            return error.InitError;
        }
    }
    pub fn openFont(font_file: [:0]u8, ptsize: c_int) FontError!Font {
        return Font{
            .ptr = ttf.TTF_OpenFont(font_file, ptsize) orelse return error.OpenFontError,
        };
    }
    pub fn renderText_Solid(self: Font, text: [:0]u8, color: SDL.Color) FontError!SDL.Surface {
        return SDL.Surface{
            .ptr = ttf.TTF_RenderText_Solid(self.ptr, text, color),
        };
    }
};
