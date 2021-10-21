const std = @import("std");

const Sdk = @import("sdl/Sdk.zig");

const Builder = std.build.Builder;

pub fn build(b: *Builder) !void {
    const sdk = Sdk.init(b);

    const mode = b.standardReleaseOptions();
    const target = b.standardTargetOptions(.{});

    const sdl_linkage = b.option(std.build.LibExeObjStep.Linkage, "link", "Defines how to link SDL2 when building with mingw32") orelse .dynamic;

    const emu = b.addExecutable("emu", "src/sdl/main.zig");
    emu.setBuildMode(mode);
    emu.setTarget(target);
    sdk.link(emu, sdl_linkage);
    emu.addPackage(sdk.getWrapperPackage("sdl2"));
    emu.install();

    const run_emu = emu.run();
    run_emu.step.dependOn(b.getInstallStep());

    const run_emu_step = b.step("run", "Runs the chip-8 emulator");
    run_emu_step.dependOn(&run_emu.step);

    const emu_nc = b.addExecutable("emu_nc", "src/notcurses/main.zig");
    emu_nc.setBuildMode(mode);
    emu_nc.setTarget(target);
    emu_nc.linkLibC();
    emu_nc.linkSystemLibrary("notcurses");
    emu_nc.linkSystemLibrary("notcurses-core");
    emu_nc.install();

    const run_emu_nc = emu_nc.run();
    run_emu_nc.step.dependOn(b.getInstallStep());

    const run_emu_nc_step = b.step("run-nc", "Runs the chip-8 emulator");
    run_emu_nc_step.dependOn(&run_emu_nc.step);
}
