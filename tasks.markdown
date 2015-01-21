---
layout: page
title: Upcoming Task List
permalink: tasks.html
---
Code changes
------------

1. Finish fixing up GDB stub ({% bug 149 %})
    1. Give error when a connection can't listen
	1. Make sure hanging up a connection doesn't kill the port
1. Merge idle loop detector and use a switch for it (unfiled)
1. Game override configuration ({% bug 165 %})
1. Refactor config system to not need encapsulation violations (unfiled)
1. Rename GPIO and sensors to gba-hardware (unfiled)
1. Fix debugger overflow (unfiled)
1. Make libretro core ({% bug 86 %})
1. Make Qt audio driver selectable at runtime (unfiled)
1. Implement SIO ({% bug 1 %})
    1. Implement lockstep driver
	1. Implement mesh driver
    1. Implement JOY bus ({% bug 73 %})
1. Refactor core and supervisor into separate folders (unfiled)

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
