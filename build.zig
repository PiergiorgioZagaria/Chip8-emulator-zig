const std = @import("std");
const Sdk = @import("libs/sdl/Sdk.zig");
const mach = @import("libs/mach/build.zig");

pub fn build(b: *std.build.Builder) !void {
    const sdk = Sdk.init(b);

    const mode = b.standardReleaseOptions();
    const target = b.standardTargetOptions(.{});

    // SDL executable
    const emu_sdl = b.addExecutable("emu-sdl", "src/sdl/main.zig");
    emu_sdl.setBuildMode(mode);
    emu_sdl.setTarget(target);
    sdk.link(emu_sdl, .dynamic);
    emu_sdl.addPackage(sdk.getWrapperPackage("sdl2"));
    emu_sdl.addPackage(std.build.Pkg{
        .name = "emu",
        .source = .{ .path = "src/chip.zig" },
        .dependencies = &.{.{
            .name = "clap",
            .source = .{ .path = "libs/zig-clap/clap.zig" },
        }},
    });
    emu_sdl.install();
    emu_sdl.addCSourceFiles(&[_][]const u8{
        "libs/imgui/imgui.cpp",
        "libs/imgui/imgui_draw.cpp",
        "libs/imgui/imgui_tables.cpp",
        "libs/imgui/imgui_widgets.cpp",
        "libs/imgui/imgui_demo.cpp",
        "libs/imgui/imgui_impl_sdl.cpp",
        "libs/imgui/imgui_impl_sdlrenderer.cpp",
        "libs/imgui/cimgui/cimgui.cpp",
    }, &.{});
    emu_sdl.linkLibCpp();
    emu_sdl.addIncludePath("libs/imgui");

    const run_emu_sdl = emu_sdl.run();
    run_emu_sdl.step.dependOn(b.getInstallStep());

    const run_emu_sdl_step = b.step("run-sdl", "Runs the chip-8 emulator with sdl");
    run_emu_sdl_step.dependOn(&run_emu_sdl.step);

    // Notcurses executable
    const emu_nc = b.addExecutable("emu_nc", "src/notcurses/main.zig");
    emu_nc.setBuildMode(mode);
    emu_nc.setTarget(target);
    sdk.link(emu_nc, .dynamic);
    emu_nc.addPackage(sdk.getWrapperPackage("sdl2"));
    emu_nc.linkSystemLibrary("notcurses");
    emu_nc.linkSystemLibrary("notcurses-core");
    emu_nc.addPackage(std.build.Pkg{
        .name = "emu",
        .source = .{ .path = "src/chip.zig" },
        .dependencies = &.{.{
            .name = "clap",
            .source = .{ .path = "libs/zig-clap/clap.zig" },
        }},
    });
    emu_nc.install();

    const run_emu_nc = emu_nc.run();
    run_emu_nc.step.dependOn(b.getInstallStep());

    const run_emu_nc_step = b.step("run-nc", "Runs the chip-8 emulator in the terminal");
    run_emu_nc_step.dependOn(&run_emu_nc.step);

    // Mach executable
    const emu_mach = mach.App.init(b, .{
        .name = "emu-mach",
        .src = "src/mach/main.zig",
        .target = target,
        .deps = &.{
            std.build.Pkg{
                .name = "emu",
                .source = .{ .path = "src/chip.zig" },
                .dependencies = &.{.{
                    .name = "clap",
                    .source = .{ .path = "libs/zig-clap/clap.zig" },
                }},
            },
        },
    });
    emu_mach.setBuildMode(mode);
    emu_mach.link(.{});
    emu_mach.install();

    const run_emu_mach = emu_mach.run();
    run_emu_mach.step.dependOn(b.getInstallStep());

    const run_emu_mach_step = b.step("run-mach", "Runs the chip-8 emulator with mach");
    run_emu_mach_step.dependOn(&run_emu_mach.step);

    if (b.args) |args| {
        run_emu_sdl.addArgs(args);
        run_emu_nc.addArgs(args);
        run_emu_mach.addArgs(args);
    }
}
