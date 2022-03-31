pub const c = @cImport({
    @cDefine("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", "1");
    @cDefine("IMGUI_IMPL_API", "extern \"C\" ");
    @cDefine("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "1");
    @cInclude("cimgui/cimgui.h");
    @cUndef("CIMGUI_DEFINE_ENUMS_AND_STRUCTS");
    // @cInclude("cimgui/cimgui_impl.h");
    @cInclude("cimgui/imgui_impl_sdl.h");
    @cInclude("cimgui/imgui_impl_sdlrenderer.h");
});
