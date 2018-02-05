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
- Wii
- PlayStation Vita

### What does the m stand for?

It doesn't. mGBA was originally going to be named miniGBA but as the project grew the mini became less accurate. The name was intended to be temporary, but as the original release crept closer I couldn't think of any better names. Other working names for mGBA included GBAc and Gerboa, but nothing else stuck.

### What is the license for mGBA?

mGBA is licensed under the Mozilla Public License 2.0, and the code can be found on [GitHub](https://github.com/mgba-emu/mgba).

## Troubleshooting

### On loading a game I only get a white screen

Try changing the audio driver in settings. If all else fails turn on _Sync to video_ and off _Sync to audio_.

### On loading a game I get a black screen or upside down image

Change the display driver from _OpenGL_ to _OpenGL (Force 1.x)_ or _Software_.
