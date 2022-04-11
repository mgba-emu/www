---
layout: page
title: FAQs
permalink: /faq.html
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
- Nintendo 3DS (New 3DS is required for GBA games)
- Nintendo Switch
- Wii
- PlayStation Vita

If you wish to run mGBA on Windows XP or other systems that RetroArch runs on please use the libretro core instead. Please note that the libretro core is not always in sync with the standalone version and may have issues no longer present upstream.

### What does the m stand for?

It doesn't. mGBA was originally going to be named miniGBA but as the project grew the "mini" appellation became less accurate. The name was intended to be temporary, but as the original release crept closer I couldn't think of any better names. Other working names for mGBA included GBAc and Gerboa, but nothing else stuck.

### How do I file a bug?

The best way is to sign up an account on GitHub and post on the [issue tracker](https://github.com/mgba-emu/mgba/issues). If you're using 0.9.0 or newer on PC please use the built-in bug report tool to generate a zip file to attach to the report. Otherwise, please include the version you're using (including the numbers and letters, if you're using a development build), what OS you're running on, and the names of games affected.

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
- BattleChip Gate (for Mega Man Battle Network)

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

### I did something and now the game always runs too fast!

Make sure Fast forward is unchecked under emulation and at least one of Sync to audio or Sync to video is checked. I recommend Sync to audio only.

### Gameplay or audio is stuttery

Try adjusting your sync settings (Sync to audio only is recommended) or your audio buffer settings. Sometimes switching the audio driver also helps.

### Audio isn't working in the 3DS version

Current versions of mGBA for 3DS require the DSP blob to be dumped for audio to work. There are various utilities available online to do this, such as [DSP1](https://github.com/zoogie/DSP1/releases/latest) or [DspDump](https://github.com/Cruel/DspDump/releases/latest).

### Will there be an Android version?

Maybe! The biggest reason there isn't one already is that mGBA is mostly developed by a single person who doesn't have experience developing Android apps. There are some half-baked attempts but none were ever released because they weren't particularly polished.

## Glossary

mGBA's development uses some project-specific names for things that may be confusing. Here's a list of the most common ones:

- CInema: A suite of automated regression tests of video output, akin to Dolphin's fifoci
- Input revamp: Upcoming rewrite of the input and controller mapping, meant to improve many of the fundamental issues present
- medusa: mGBA's upcoming DS support
- mGUI: The UI used on all the homebrew ports
- mGUI2: mGBA's upcoming enhanced homebrew UI
- mNP: mGBA's upcoming netplay support and link cable rewrite
- Orca: Upcoming mGBA/Dolphin integration for GBA link and GB Player
- XQ audio: High-level mixing of the MP2k (Music Player 2000, sometimes erroneously called M4A or Sappy) audio engine for higher quality audio
