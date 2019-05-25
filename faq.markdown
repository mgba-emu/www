---
layout: page
title: FAQs
permalink: /faq.html
nav: yes
toc: yes
---
## General

### What is mGBA?

mGBA is a new generation of Game Boy Advance emulator. The project started in April 2013 with the goal of being fast enough to run on lower end hardware than other emulators support, without sacrificing accuracy or portability. Even in the initial version, games generally played without problems. mGBA has only gotten better since then, and now boasts being the most accurate GBA emulator around.

Further along in development mGBA gained Game Boy support and eventually is planned to have DS support too. Other goals include accurate enough emulation to provide a development environment for homebrew software, a good workflow for tool-assist runners, and a modern feature set for emulators that older emulators may not support.

### What are the system requirements for mGBA?

mGBA will run on mostly any computer from the last decade, as well as several additional platforms:

- Windows (Vista or newer)
- macOS
- Linux
- \*BSD
- Nintendo 3DS
- Nintendo Switch
- Wii
- PlayStation Vita

If you wish to run mGBA on Windows XP or other systems that RetroArch runs on please use the libretro core instead. Please note that the libretro core is not always in sync with the standalone version and may have issues no longer present upstream.

### What does the m stand for?

It doesn't. mGBA was originally going to be named miniGBA but as the project grew the mini became less accurate. The name was intended to be temporary, but as the original release crept closer I couldn't think of any better names. Other working names for mGBA included GBAc and Gerboa, but nothing else stuck.

### What is the license for mGBA?

mGBA is licensed under the Mozilla Public License 2.0, and the code can be found on [GitHub](https://github.com/mgba-emu/mgba).

### How do I compile mGBA?

Please see the [README](https://github.com/mgba-emu/mgba/blob/master/README.md) for detailed information.

## Features

### How good is compatibility?

mGBA emulates two platforms currently, with the work-in-progress medusa version supporting a third:

- Game Boy Advance emulation is currently very good. There are known bugs and a small handful of games that don't boot.
- Game Boy/Game Boy Color emulation is good. Most games work but there are still plenty of bugs. Please file a bug if you find a game that doesn't boot.
- DS support is very early and only available in the medusa branch, which is not under active development at the moment.

Current bugs can be found on GitHub for [GBA](https://github.com/mgba-emu/mgba/issues?q=is%3Aissue+is%3Aopen+label%3Aplatform%3AGBA), [GB/C](https://github.com/mgba-emu/mgba/issues?q=is%3Aissue+is%3Aopen+label%3Aplatform%3AGB%2FGBC) and [DS](https://github.com/mgba-emu/mgba/issues?q=is%3Aissue+is%3Aopen+label%3Aplatform%3ADS)

### What peripherals and cartridge types does mGBA support?

Please see the [README](https://github.com/mgba-emu/mgba/blob/master/README.md) for current status, but most GBA peripherals are supported:

- Rumble (cartridge and Game Boy Player)
- Rotation/tilt (accelerometer and gyroscope)
- Solar sensor (for Boktai)
- Realtime clock
- Link cable (partial support)
- BattleChip Gate (for Mega Man Battle Network, only in development versions)

And some GB peripherals and special cartridge types are supported:

- Rumble
- Tilt (MBC7)
- Realtime clock
- Game Boy Printer
- Game Boy Camera (partial support)
- Super Game Boy (partial support)
- MBC6 (partial support)
- MMM01 (partial support)
- TAMA5 (partial support)
- HuC-1 (partial support)
- HuC-3 (partial support)

The following are not supported at the time:

- Wireless Adapter
- IR Adapter (for Zoids: Cyberdrive)
- Soul Adapter (for Legendz)

## Troubleshooting

### On loading a game I only get a white screen

Try changing the audio driver in settings. If all else fails turn on _Sync to video_ and off _Sync to audio_.

### On loading a game I get a black screen or upside down image

Change the display driver from _OpenGL_ to _OpenGL (Force 1.x)_ or _Software_.

### mGBA has issues with my controller

At this time mGBA's controller support is lackluster. Improvements are planned but if using a controller is your utmost concern you may want to use the libretro core instead.
