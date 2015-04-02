---
layout: page
title: Upcoming Task List
permalink: tasks.html
---
Code changes
------------

1. Savestates do not store if CPU is halted ({% bug 119 %}) &dagger;
1. Implement SIO part 2 ({% bug 1 %})
    1. Finish JOY bus ({% bug 73 %}) *ETA Unknown - external factors* &dagger;
1. Add BizHawk integration API (unfiled) - *ETA Unknown - external factors* &dagger;
1. **Release 0.2.0** - *ETA April 3*
1. Cheat code support part 3 ({% bug 58 %})
    1. Split out cheat device files?
    1. Auto-loading cheats
    1. Rearranging
1. Import/Export of GameShark and Action Replay save files ({% bug 170 %})
1. Redo key mapping (unfiled)
1. "Turbo" button repeat ({% bug 172 %})
1. Customize shortcuts per controller profile ({% bug 202 %})
1. Allow multiple-choice menu items to be mapped to gamepad (unfiled)
1. Figure out how to implement Stop ({% bug 199 %})
1. Master volume control ({% bug 200 %})
1. Make OpenEmu core (unfiled)
1. Implement SIO part 3
    1. Implement frame transfer SIO driver (unfiled)
    1. Implement mesh driver
    1. Implement Game Boy Player features ({% bug 60 %})
    1. Get Multi Boot working in lockstep driver
    1. Implement serial driver for Teensy bus
1. Debug suite ({% bug 132 %})
    1. Ability to toggle visible layers ({% bug 187 %})
    1. Ability to toggle playing channels ({% bug 188 %})
    1. Software callbacks (unfiled)
    1. Palette viewer
    1. Tile viewer
    1. BG viewer
    1. OBJ viewer
    1. Memory viewer
    1. I/O viewer
    1. Instruction-level debugger
1. Test suite ({% bug 182 %})
    1. Timing tests
    1. Video tests
    1. Audio tests
1. Use results of video tests to fix outstanding graphical issues ({% bug 5 %} {% bug 9 %})
1. Implement game pak prefetch ({% bug 195 %})
1. Add About screen (unfiled)
1. Deferred cleanup
    1. Support libswresample ({% bug 123 %})
    1. Fix debugger overflow (unfiled)
    1. Audio channel reset flags are not implemented ({% bug 142 %})
    1. Finish PowerPC support ({% bug 32 %})
    1. Finish implementing RegisterRamReset ({% bug 141 %})
1. **Potential 0.3.0 cutoff**
1. Plugin system ({% bug 111 %})
1. Programmable HUD (unfiled)
1. Lua bindings ({% bug 62 %})
1. Finish RR
    1. Expose RR interface ({% bug 122 %})
    1. Ability to automatically pause emulation at the end of a movie ({% bug 110 %})
    1. Ability to compile movie into one file ({% bug 107 %})
    1. RR doesn't checkpoint savegames ({% bug 139 %})
    1. RR should support resets ({% bug 103 %})
    1. Hook up GPIO devices to RR subsystem ({% bug 164 %})
    1. Ability to prune dead branches in movies ({% bug 108 %})
1. Video streaming ({% bug 104 %})
1. Video filter support ({% bug 192 %})
1. Hardware renderer ({% bug 137 %})
1. Dynamic recompiler for ARM (unfiled)
1. NSIS installer for Windows ({% bug 138 %})
1. **Definite 0.3.0 cutoff**
1. Library view ({% bug 186 %})
1. Dynamic recompiler for MIPS (unfiled)
1. Support i18n ({% bug 63 %})
1. e-Reader support ({% bug 171 %})

**&dagger;**: At risk of being delayed until next release.

Articles
--------

1. Graphics
    1. Mode 0
    1. Modes 1 &amp; 2
    1. Objects
    1. Modes 3 &ndash; 5
    1. Blend modes
    1. Mosaic
    1. Windows
1. Anti-emulation followup
1. Graphical tricks
1. mGBA architecture
1. Special cartridges
