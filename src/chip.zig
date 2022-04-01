const std = @import("std");

const ChipError = error{
    NotImplementedError,
    OpcodeError,
};

pub const Chip = struct {
    memory: [4096]u8 = [_]u8{0} ** 0x50 ++ [_]u8{ // We need to create builtin formats
        0xF0, 0x90, 0x90, 0x90, 0xF0, // 0
        0x20, 0x60, 0x20, 0x20, 0x70, // 1
        0xF0, 0x10, 0xF0, 0x80, 0xF0, // 2
        0xF0, 0x10, 0xF0, 0x10, 0xF0, // 3
        0x90, 0x90, 0xF0, 0x10, 0x10, // 4
        0xF0, 0x80, 0xF0, 0x10, 0xF0, // 5
        0xF0, 0x80, 0xF0, 0x90, 0xF0, // 6
        0xF0, 0x10, 0x20, 0x40, 0x40, // 7
        0xF0, 0x90, 0xF0, 0x90, 0xF0, // 8
        0xF0, 0x90, 0xF0, 0x10, 0xF0, // 9
        0xF0, 0x90, 0xF0, 0x90, 0x90, // A
        0xE0, 0x90, 0xE0, 0x90, 0xE0, // B
        0xF0, 0x80, 0x80, 0x80, 0xF0, // C
        0xE0, 0x90, 0x90, 0x90, 0xE0, // D
        0xF0, 0x80, 0xF0, 0x80, 0xF0, // E
        0xF0, 0x80, 0xF0, 0x80, 0x80, // F
        0x00, // For autoformat
    } ++ [_]u8{0} ** 3935, // 4kB Ram memory
    // The first CHIP-8 interpreter (on the COSMAC VIP computer) was also located in RAM, from address 000 to 1FF. It would expect a CHIP-8 program to be loaded into memory after it, starting at address 200 (512 in decimal). Although modern interpreters are not in the same memory space, you should do the same to be able to run the old programs; you can just leave the initial space empty, except for the font.
    display: [2048]u32 = [_]u32{0} ** 2048, // A 64 X 32 pixel monochrome display
    pc: u16 = 0x200, // A program counter, points to the instruction to exec, can only address 12 bits (4096)
    ir: u16 = 0, // Index register (I), point at locations in memory, can only address 12 bits (4096)
    stack: Stack = Stack{}, // Used to call subroutines/functions
    delay_timer: u8 = 0, //  delay timer which is decremented at a rate of 60 Hz (60 times per second) until it reaches 0
    sound_timer: u8 = 0, // which functions like the delay timer, but which also gives off a beeping sound as long as it’s not 0
    V: [16]u8 = [_]u8{0} ** 16, // general-purpose variable registers numbered 0 through F, F is also used as a flag register; many instructions will set it to either 1 or 0 based on some rule, for example using it as a carry flag
    keys: []bool = undefined, // The keys go from 0 to F, assigned once in main()
    // 1 2 3 4 - Q W E R - A S D F - Z X C V : KEYS
    // 1 2 3 C - 4 5 6 D - 7 8 9 E - A 0 B F : INDEX
    fg_color: u32,
    fg_color_prev: u32,
    bg_color: u32,
    bg_color_prev: u32,

    pub fn init(file: []const u8, fg_color: u32, bg_color: u32) !Chip {
        var chip = Chip{
            .fg_color = fg_color,
            .fg_color_prev = fg_color,
            .bg_color = bg_color,
            .bg_color_prev = bg_color,
        };
        _ = try std.fs.cwd().readFile(file, chip.memory[0x200..]);
        std.mem.set(u32, &chip.display, bg_color);
        return chip;
    }
    /// Resets the chip to the initial state and loads new file.
    /// Useful if you want to change roms on the go without stopping and restarting the executable
    pub fn restart(self: *Chip, file: []const u8) !void {
        _ = try std.fs.cwd().readFile(file, self.memory[0x200..]);
        self.display = [_]u32{0} ** 2048;
        self.pc = 0x200;
        self.ir = 0;
        self.stack.index = 0;
        self.delay_timer = 0;
        self.sound_timer = 0;
        self.V = [_]u8{0} ** 16;
    }
    pub fn set_chip_keys(self: *Chip, keys: []bool) void {
        self.keys = keys;
    }
    pub fn cycle(self: *Chip) ChipError!void {
        // Fetch -> Decode -> Execute instructions
        var opcode: u16 = @as(u16, self.memory[self.pc]) << 8 | self.memory[self.pc + 1];
        // std.debug.print("executing: {x}\n", .{opcode});
        self.pc += 2;

        switch (opcode >> 8 & 0xf0) {
            0x00 => {
                if (opcode == 0x00e0) {
                    self.clear_screen();
                    // std.debug.print("Clear screen\n", .{});
                    // self.update_display = true;
                } else if (opcode == 0x00ee) {
                    self.pc = self.stack.pop();
                    // std.debug.print("Return from subroutine\n", .{});
                } else {
                    return error.NotImplementedError;
                }
            },
            0x10 => {
                // if (self.pc - 2 == opcode & 0x0fff) {
                //     std.log.err("Infinte loop\n", .{});
                //     std.process.exit(1);
                // }
                self.pc = opcode & 0x0fff;
                // std.debug.print("Set pc to {x}\n", .{opcode & 0x0fff});
            },
            0x20 => {
                self.stack.push(self.pc);
                self.pc = opcode & 0x0fff;
                // std.debug.print("Calling subroutine\n", .{});
            },
            0x30 => {
                // std.debug.print("Skip if V{} ({}) == {}\n", .{ opcode >> 8 & 0x0f, self.V[opcode >> 8 & 0x0f], opcode & 0x00ff });
                if (self.V[opcode >> 8 & 0x0f] == opcode & 0x00ff) {
                    self.pc += 2;
                }
            },
            0x40 => {
                // std.debug.print("Skip if V{} ({}) != {}\n", .{ opcode >> 8 & 0x0f, self.V[opcode >> 8 & 0x0f], opcode & 0x00ff });
                if (self.V[opcode >> 8 & 0x0f] != opcode & 0x00ff) {
                    self.pc += 2;
                }
            },
            0x50 => {
                // std.debug.print("Skip if V{} ({}) == V{} ({})\n", .{ opcode >> 8 & 0x0f, self.V[opcode >> 8 & 0x0f], opcode >> 4 & 0x00f, self.V[opcode >> 4 & 0x00f] });
                if (self.V[opcode >> 8 & 0x0f] == self.V[opcode >> 4 & 0x00f]) {
                    self.pc += 2;
                }
            },
            0x60 => {
                self.V[opcode >> 8 & 0x0f] = @truncate(u8, opcode);
                // std.debug.print("Set V{} to {x}\n", .{ opcode >> 8 & 0x0f, @truncate(u8, opcode) });
            },
            0x70 => {
                self.V[opcode >> 8 & 0x0f] +%= @truncate(u8, opcode);
                // std.debug.print("Add to V{}, {x}\n", .{ opcode >> 8 & 0x0f, @truncate(u8, opcode) });
            },
            0x80 => {
                const x = opcode >> 8 & 0x0f;
                const y = opcode >> 4 & 0x00f;
                switch (opcode & 0x000f) {
                    0x00 => {
                        self.V[x] = self.V[y];
                        // std.debug.print("Set V{} to the value in V{}\n", .{ x, y });
                    },
                    0x01 => {
                        self.V[x] |= self.V[y];
                        // std.debug.print("V{} |= V{}\n", .{ x, y });
                    },
                    0x02 => {
                        self.V[x] &= self.V[y];
                        // std.debug.print("V{} &= V{}\n", .{ x, y });
                    },
                    0x03 => {
                        self.V[x] ^= self.V[y];
                        // std.debug.print("V{} ^= V{}\n", .{ x, y });
                    },
                    0x04 => {
                        self.V[0xf] = @boolToInt(@addWithOverflow(u8, self.V[x], self.V[y], &self.V[x]));
                        // self.V[x] += self.V[y];
                        // std.debug.print("V{} += V{}, check overflow\n", .{ x, y });
                    },
                    0x05 => {
                        self.V[0xf] = @boolToInt(self.V[x] > self.V[y]);
                        self.V[x] -%= self.V[y];
                        // std.debug.print("V{} -= V{}, check underflow\n", .{ x, y });
                    },
                    0x06 => {
                        // self.V[x] = self.V[y];
                        self.V[0xf] = self.V[x] & 1;
                        self.V[x] = self.V[x] >> 1;
                        // std.debug.print("Bit shift right V{}, WARNING: BUGGY, AMBIGUOUS\n", .{x}); // There are two implementations, one first assigns Vx = Vy, this is the other
                    },
                    0x07 => {
                        self.V[0xf] = @boolToInt(self.V[y] > self.V[x]);
                        self.V[x] = self.V[y] -% self.V[x];
                        // std.debug.print("V{} = V{} - V{}, check underflow\n", .{ x, x, y });
                    },
                    0x0e => {
                        // self.V[x] = self.V[y];
                        self.V[0xf] = self.V[x] >> 7;
                        self.V[x] = self.V[x] << 1;
                        // std.debug.print("Bit shift left V{}, WARNING: BUGGY, AMBIGUOUS\n", .{x}); // There are two implementations, one first assigns Vx = Vy, this is the other
                    },
                    else => {
                        return error.OpcodeError;
                    },
                }
            },
            0x90 => {
                // std.debug.print("Skip if V{} ({}) != V{} ({})\n", .{ opcode >> 8 & 0x0f, self.V[opcode >> 8 & 0x0f], opcode >> 4 & 0x00f, self.V[opcode >> 4 & 0x00f] });
                if (self.V[opcode >> 8 & 0x0f] != self.V[opcode >> 4 & 0x00f]) {
                    self.pc += 2;
                }
            },
            0xA0 => {
                self.ir = opcode & 0x0fff;
                // std.debug.print("Set I to {x}\n", .{opcode & 0x0fff});
            },
            0xB0 => {
                self.pc = (opcode & 0x0fff) + self.V[0];
                // self.pc = opcode & 0x0fff + self.V[(opcode >> 8) & 0x0f];
                // std.debug.print("Jump with offset V0, WARNING: BUGGY, AMBIGUOUS\n", .{});
            },
            0xC0 => {
                var rand = std.rand.Xoroshiro128.init(@intCast(u64, std.time.nanoTimestamp()));
                self.V[(opcode >> 8) & 0x0f] = rand.random().int(u8) & @truncate(u8, opcode & 0x00ff);
                // std.debug.print("Random number\n", .{});
            },
            0xD0 => {
                // std.debug.print("Draw Sprite\n", .{});
                self.print_sprite(opcode);
            },
            0xE0 => {
                if (opcode & 0x00ff == 0x9e) {
                    if (self.keys[self.V[(opcode >> 8) & 0x0f]]) {
                        self.pc += 2;
                    }
                    // std.debug.print("Jump if key pressed\n", .{});
                } else if (opcode & 0x00ff == 0xa1) {
                    if (!self.keys[self.V[(opcode >> 8) & 0x0f]]) {
                        self.pc += 2;
                    }
                    // std.debug.print("Jump if key not pressed\n", .{});
                } else {
                    return error.NotImplementedError;
                }
            },
            0xF0 => {
                switch (opcode & 0x00ff) {
                    0x07 => {
                        self.V[(opcode >> 8) & 0x0f] = self.delay_timer;
                        // std.debug.print("Set VX to the value in delay_timer\n", .{});
                    },
                    0x0a => {
                        for (self.keys) |v, i| {
                            if (v) {
                                self.V[(opcode >> 8) & 0x0f] = @intCast(u8, i);
                                return;
                            }
                        }
                        self.pc -= 2;
                        // std.debug.print("Blocked on Input\n", .{});
                    },
                    0x15 => {
                        self.delay_timer = self.V[(opcode >> 8) & 0x0f];
                        // std.debug.print("Set the value in delay_timer to VX\n", .{});
                    },
                    0x18 => {
                        self.sound_timer = self.V[(opcode >> 8) & 0x0f];
                        // std.debug.print("Set the value in sound_timer to VX\n", .{});
                    },
                    0x1e => {
                        self.ir += self.V[(opcode >> 8) & 0x0f];
                        self.V[0xf] = @boolToInt(self.ir > 0x0fff);
                        // std.debug.print("Add VX to I, WARNING AMBIGUOUS FLAG\n", .{});
                    },
                    0x29 => {
                        self.ir = @as(u16, self.V[(opcode >> 8) & 0x0f]) * 5 + 0x050;
                        // std.debug.print("Set I to font character referred by VX\n", .{});
                    },
                    0x33 => {
                        const tmp = self.V[(opcode >> 8) & 0x0f];
                        self.memory[self.ir] = tmp / 100;
                        self.memory[self.ir + 1] = (tmp / 10) % 10;
                        self.memory[self.ir + 2] = tmp % 10;
                        // std.debug.print("Convert Binary to decimal and store in memory at I\n", .{});
                    },
                    0x55 => {
                        var i: u8 = 0;
                        var x: u8 = @truncate(u8, (opcode >> 8) & 0x0f);
                        while (i <= x) : (i += 1) {
                            self.memory[self.ir + i] = self.V[i];
                        }
                        // self.ir += i;
                        // std.debug.print("Copy registers to memory, WARNING AMBIGUOUS\n", .{});
                    },
                    0x65 => {
                        var i: u8 = 0;
                        var x: u8 = @truncate(u8, (opcode >> 8) & 0x0f);
                        while (i <= x) : (i += 1) {
                            self.V[i] = self.memory[self.ir + i];
                        }
                        // self.ir += i;
                        // std.debug.print("Load memory to registers, WARNING AMBIGUOUS\n", .{});
                    },
                    else => return error.NotImplementedError,
                }
            },
            else => unreachable,
        }
    }

    fn clear_screen(self: *Chip) void {
        // self.display = [_]u32{0} ** 2048;
        std.mem.set(u32, &self.display, self.bg_color);
    }

    /// Doesn't update if fg_color == bg_color.
    /// Not noticeable with dragging, but very noticeable if you manually set the colors
    pub fn updateColors(self: *Chip) void {
        if (self.fg_color == self.bg_color) {
            self.fg_color = self.fg_color_prev;
            self.bg_color = self.bg_color_prev;
        } else {
            for (self.display) |*d| {
                if (d.* == self.fg_color_prev) {
                    d.* = self.fg_color;
                } else {
                    d.* = self.bg_color;
                }
            }
            self.fg_color_prev = self.fg_color;
            self.bg_color_prev = self.bg_color;
        }
    }

    fn print_sprite(self: *Chip, opcode: u16) void {
        const x: usize = self.V[opcode >> 8 & 0x0f];
        const y: usize = self.V[(opcode & 0x00f0) >> 4];
        self.V[0xf] = 0;
        const n: usize = opcode & 0x000f;
        var i: usize = 0;
        var j: u4 = undefined;
        while (i < n) : (i += 1) {
            if (y + i > 31) {
                break;
            }
            j = 0;
            while (j < 8) : (j += 1) {
                if (x + j > 63) {
                    break;
                }
                if ((@as(u16, self.memory[self.ir + i]) >> (7 - j) & 1) == 1) {
                    if (self.display[x + j + (y + i) * 64] == self.fg_color) {
                        self.V[0xf] = 1;
                        self.display[x + j + (y + i) * 64] = self.bg_color;
                    } else {
                        self.display[x + j + (y + i) * 64] = self.fg_color;
                    }
                }
            }
        }
    }
};

const Stack = struct {
    memory: [16]u16 = [_]u16{0} ** 16,
    index: usize = 0,

    fn push(self: *Stack, data: u16) void {
        self.memory[self.index] = data;
        self.index += 1;
    }
    fn pop(self: *Stack) u16 {
        self.index -= 1;
        return self.memory[self.index];
    }
};
