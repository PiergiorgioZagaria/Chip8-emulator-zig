const std = @import("std");

const Sdk = @import("sdl/Sdk.zig");

const Builder = std.build.Builder;

pub fn build(b: *Builder) !void {
    const sdk = Sdk.init(b);

    const mode = b.standardReleaseOptions();
    const target = b.standardTargetOptions(.{});

    const sdl_linkage = b.option(std.build.LibExeObjStep.Linkage, "link", "Defines how to link SDL2 when building with mingw32") orelse .dynamic;

    const emu = b.addExecutable("emu", "src/main.zig");
    emu.setBuildMode(mode);
    emu.setTarget(target);
    sdk.link(emu, sdl_linkage);
    emu.addPackage(sdk.getWrapperPackage("sdl2"));
    emu.install();

    const run_emu = emu.run();
    run_emu.step.dependOn(b.getInstallStep());

    const run_emu_step = b.step("run", "Runs the chip-8 emulator for the SDL2 wrapper library");
    run_emu_step.dependOn(&run_emu.step);
}
