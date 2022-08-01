pub const c = @cImport({
    @cDefine("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", "1");
    @cDefine("IMGUI_IMPL_API", "extern \"C\" ");
    @cDefine("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "1");
    @cDefine("IMGUI_INCLUDE_IMCONFIG_H", "1");
    @cInclude("cimgui/cimgui.h");
    @cDefine("CIMGUI_API", " ");
    @cInclude("cimgui/cimgui_impl.h");
});
