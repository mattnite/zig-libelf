const std = @import("std");
const libelf = @import("libelf.zig");

pub fn build(b: *std.build.Builder) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();

    const elf = libelf.create(b, target, mode);
    elf.step.install();
}
