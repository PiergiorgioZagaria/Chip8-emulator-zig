const std = @import("std");

const Sdk = @import("sdl/Sdk.zig");

const Builder = std.build.Builder;

pub fn build(b: *Builder) !void {
    const sdk = Sdk.init(b);

    const mode = b.standardReleaseOptions();
    const target = b.standardTargetOptions(.{});

    const emu = b.addExecutable("emu", "src/sdl/main.zig");
    emu.setBuildMode(mode);
    emu.setTarget(target);
    sdk.link(emu, .dynamic);
    emu.addPackage(sdk.getWrapperPackage("sdl2"));
    emu.addPackagePath("emu", "src/chip.zig");
    emu.addPackagePath("clap", "zig-clap/clap.zig");
    emu.install();
    emu.addCSourceFiles(&[_][]const u8{
        "imgui/imgui.cpp",
        "imgui/imgui_draw.cpp",
        "imgui/imgui_tables.cpp",
        "imgui/imgui_widgets.cpp",
        "imgui/imgui_demo.cpp",
        "imgui/cimgui/imgui_impl_sdl.cpp",
        "imgui/cimgui/imgui_impl_sdlrenderer.cpp",
        "imgui/cimgui/cimgui.cpp",
    }, &.{});
    emu.linkLibCpp();
    emu.addIncludePath("imgui");

    const run_emu = emu.run();
    run_emu.step.dependOn(b.getInstallStep());

    const run_emu_step = b.step("run", "Runs the chip-8 emulator");
    run_emu_step.dependOn(&run_emu.step);

    // const emu_nc = b.addExecutable("emu_nc", "src/notcurses/main.zig");
    // emu_nc.setBuildMode(mode);
    // emu_nc.setTarget(target);
    // emu_nc.linkLibC();
    // emu_nc.linkSystemLibrary("notcurses");
    // emu_nc.linkSystemLibrary("notcurses-core");
    // sdk.link(emu_nc, .dynamic);
    // emu_nc.addPackage(sdk.getWrapperPackage("sdl2"));
    // emu_nc.addPackagePath("emu", "src/chip.zig");
    // emu_nc.addPackage(emu_pkg);
    // emu_nc.addPackagePath("clap", "zig-clap/clap.zig");
    // emu_nc.install();

    // const run_emu_nc = emu_nc.run();
    // run_emu_nc.step.dependOn(b.getInstallStep());

    // const run_emu_nc_step = b.step("run-nc", "Runs the chip-8 emulator");
    // run_emu_nc_step.dependOn(&run_emu_nc.step);
}
