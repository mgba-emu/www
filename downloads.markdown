---
layout: page
title: Downloads
permalink: /downloads.html
toc: true
---

Current downloads
-----------------

{% assign tag = "0.9.3" -%}
The current release of mGBA is version {{tag}}.

### Desktop OS
* [Windows (portable .7z archive)](https://github.com/mgba-emu/mgba/releases/download/{{tag}}/mGBA-{{tag}}-win32.7z)
* [Windows (installer .exe)](https://github.com/mgba-emu/mgba/releases/download/{{tag}}/mGBA-{{tag}}-win32-installer.exe)
* [Windows (64-bit, portable .7z archive)](https://github.com/mgba-emu/mgba/releases/download/{{tag}}/mGBA-{{tag}}-win64.7z)
* [Windows (64-bit, installer .exe)](https://github.com/mgba-emu/mgba/releases/download/{{tag}}/mGBA-{{tag}}-win64-installer.exe)
* [macOS](https://github.com/mgba-emu/mgba/releases/download/{{tag}}/mGBA-{{tag}}-osx.dmg)
* [Ubuntu (64-bit, 16.04)](https://github.com/mgba-emu/mgba/releases/download/{{tag}}/mGBA-{{tag}}-ubuntu64-xenial.tar.xz)
* [Ubuntu (64-bit, 18.04)](https://github.com/mgba-emu/mgba/releases/download/{{tag}}/mGBA-{{tag}}-ubuntu64-bionic.tar.xz)
* [Ubuntu (64-bit, 20.04)](https://github.com/mgba-emu/mgba/releases/download/{{tag}}/mGBA-{{tag}}-ubuntu64-focal.tar.xz)
* [Ubuntu (64-bit, 21.04)](https://github.com/mgba-emu/mgba/releases/download/{{tag}}/mGBA-{{tag}}-ubuntu64-hirsute.tar.xz)
* [Ubuntu (64-bit, 21.10)](https://github.com/mgba-emu/mgba/releases/download/{{tag}}/mGBA-{{tag}}-ubuntu64-impish.tar.xz)

### Homebrew
* [Nintendo 3DS](https://github.com/mgba-emu/mgba/releases/download/{{tag}}/mGBA-{{tag}}-3ds.7z)
* [Nintendo Switch](https://github.com/mgba-emu/mgba/releases/download/{{tag}}/mGBA-{{tag}}-switch.7z)
* [Wii](https://github.com/mgba-emu/mgba/releases/download/{{tag}}/mGBA-{{tag}}-wii.7z)
* [PlayStation Vita](https://github.com/mgba-emu/mgba/releases/download/{{tag}}/mGBA-{{tag}}-vita.7z)

### Other
* [Source](https://github.com/mgba-emu/mgba/archive/{{tag}}.tar.gz)

Older releases are [also available]({{ site.baseurl }}/old.html).

Preview downloads
-----------------

### mGBA

There is no current preview release of mGBA.

### medusa

These are preview builds for medusa, the in-development DS emulator. They are 64-bit only. The current preview build is alpha 2.

_Note that due to issues with the automated build system, there is not currently an alpha 2 build for Ubuntu.
Please use a development build instead (see below)._

* [Windows](https://github.com/mgba-emu/mgba/releases/download/medusa-a2/medusa-a2-win64.7z)
* [macOS](https://github.com/mgba-emu/mgba/releases/download/medusa-a2/medusa-a2-osx.tar.xz)
* [Source](https://github.com/mgba-emu/mgba/archive/medusa-a2.tar.gz)

Development downloads
---------------------

Development builds are available for Windows, macOS, Ubuntu, and as homebrew for the Nintendo 3DS, Switch, Wii, and PlayStation Vita.
The builds are updated hourly, and contain a CHANGES file that lists all of the user-facing changes since the previous release.

### Desktop OS
* [Windows (portable .7z archive)](https://s3.amazonaws.com/mgba/mGBA-build-latest-win32.7z)
* [Windows (installer .exe)](https://s3.amazonaws.com/mgba/mGBA-build-installer-latest-win32.exe)
* [Windows (64-bit, portable .7z archive)](https://s3.amazonaws.com/mgba/mGBA-build-latest-win64.7z)
* [Windows (64-bit, installer .exe)](https://s3.amazonaws.com/mgba/mGBA-build-installer-latest-win64.exe)
* [macOS (modern, 10.13+)](https://s3.amazonaws.com/mgba/mGBA-build-latest-macos.dmg)
* [macOS (legacy, 10.9+)](https://s3.amazonaws.com/mgba/mGBA-build-latest-osx.dmg)
* [Linux (AppImage, 64-bit)](https://s3.amazonaws.com/mgba/mGBA-build-latest-appimage-x64.appimage)
* [Ubuntu (64-bit, 18.04)](https://s3.amazonaws.com/mgba/mGBA-build-latest-ubuntu64-bionic.tar.xz)
* [Ubuntu (64-bit, 20.04)](https://s3.amazonaws.com/mgba/mGBA-build-latest-ubuntu64-focal.tar.xz)
* [Ubuntu (64-bit, 22.04)](https://s3.amazonaws.com/mgba/mGBA-build-latest-ubuntu64-jammy.tar.xz)
* [Ubuntu (64-bit, 22.10)](https://s3.amazonaws.com/mgba/mGBA-build-latest-ubuntu64-kinetic.tar.xz)

### Homebrew
* [Nintendo 3DS](https://s3.amazonaws.com/mgba/mGBA-build-latest-3ds.7z)
* [Nintendo Switch](https://s3.amazonaws.com/mgba/mGBA-build-latest-switch.7z)
* [Wii](https://s3.amazonaws.com/mgba/mGBA-build-latest-wii.7z)
* [PlayStation Vita](https://s3.amazonaws.com/mgba/mGBA-build-latest-vita.7z)

### medusa
* [Windows](https://s3.amazonaws.com/mgba/medusa-build-latest-win64.7z)
* [macOS](https://s3.amazonaws.com/mgba/medusa-build-latest-osx.tar.xz)
* [Ubuntu (64-bit, 16.04)](https://s3.amazonaws.com/mgba/medusa-build-latest-ubuntu64-xenial.tar.xz)

Older builds are also available for [mGBA]({{ site.baseurl }}/builds/1/) and [medusa]({{ site.baseurl }}/builds/medusa/1/).
Previously, only [nightly builds]({{ site.baseurl }}/nightlies/1/) were provided.

Get the source code by cloning the official git repository:

    git clone https://github.com/mgba-emu/mgba.git

You can also visit the [GitHub](https://github.com/mgba-emu/mgba/) page to browse the source online, or to fork the project.

The source code for the third-party libraries against which the nightlies have been built is [available here](https://github.com/mgba-emu/dependencies).
