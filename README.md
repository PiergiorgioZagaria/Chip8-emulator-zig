* A chip8 emulator (interpreter) written in zig
** Notes
The sound may not be well implemented, I ported it from another emulator
Tested with zig version 0.10.0-dev.3051+b8bf5de75

** Usage
Build and run with `zig build run-[sdl/mach] -- "<Path to ROM>"`

** TODOS
- [ ] Rewrite notcurses api
- [-] Sound (Only for SDL)
- [ ] Add some Images or gifs to showcase the project
- [-] Add debugging functionality (Small implementation with SDL and imgui)
- [ ] Add support for Octo

** Dependencies
- [[https://ziglang.org/][zig]]
- [[https://github.com/Hejsil/zig-clap][zig-clap]]
- [[https://github.com/MasterQ32/SDL.zig][SDL.zig]]
- [[https://www.libsdl.org/index.php][SDL]]
- [[https://github.com/dankamongmen/notcurses][notcurses]]
- [[https://https://github.com/hexops/mach][mach]]

** You can find some roms here
- test-opcode.ch8 [[https://github.com/corax89/chip8-test-rom]]
- BC_test.ch8, CAVE, Maze, PONG, TANK, TETRIS [[https://github.com/cj1128/chip8-emulator/tree/master/rom]]
- Chipquarium, Heart monitor, morse code [[https://github.com/mattmikolay/chip-8]]
- Many more here [[https://www.zophar.net/pdroms/chip8/chip-8-games-pack.html]]
