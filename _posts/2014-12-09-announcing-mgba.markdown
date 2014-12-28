---
layout: post
title:  "Announcing mGBA"
date:   2014-12-09 23:18:09
tags:
- announcement
- future plans
---
A year and a half in development, I'm very happy to announce the impending release of the first version of a brand new Game Boy Advance emulator, written from the ground up in C. Despite being a first version, it's still very featureful. While the emulator might have been ready for a release months ago, I wanted to polish it to be as good as it could be for the first release. It surely shows.

Some of the features that will be in the initial version are:

* A solid ARM7TDMI core emulator with near-full Game Boy Advance hardware emulation.
* Great emulation. Despite the fact that this is the initial version, most games work quite well, if not perfectly, already.
* Reliable savetype detection. Some games may still need work to detect saves, so please feel free to [file a bug]({{ site.baseurl }}/bugs.html) if a game does not save properly.
* Real-time clock support for the games that use the RTC.
* Custom BIOS, removing the need to use a separate BIOS file. A separate BIOS file can still be used, if desired, for additional accuracy.
* Fast. I've measured it at roughly 30% faster than latest VBA-M at 0 frameskip.
* Portable. It is known to compile and run on Windows Vista or newer, OS X 10.7 or newer, Linux (x86/x86-64 and ARM) and FreeBSD. Even more Unix-like platforms may work out-of-the-box.
* Additional emulation features, such as frameskip, turbo, savestates, screenshots, and video recording.
* Remappable keyboard and gamepad controls.
* Built-in support for IPS and UPS patch formats.
* A powerful GUI written in C++ using Qt.
* A simple SDL frontend when only a minimal interface is needed.
* A command-line debugger that can be used with the SDL version.

Even more features are in the works, although they aren't quite ready for the first version:

* Link cable emulation, supporting local and network multiplayer, and Dolphin compatibility.
* Cheat code support.
* Hardware rendering with OpenGL 2+.
* Re-recording support and Lua scripting for tool-assist runs.
* A libretro core for RetroArch and OpenEmu support.
* A fully featured debug suite.
* A dynamic recompiler for even faster support on ARM platforms.

Furthermore, feature requests are welcome at this point, if you have a brilliant idea that's not on this list. The source code is available on [GitHub](https://github.com/mgba-emu/mgba/) under the Mozilla Public License 2.0 *right now*.

**Announcing mGBA. Coming soon.**
