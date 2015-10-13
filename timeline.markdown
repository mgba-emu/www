---
layout: page
title: Timeline
permalink: /timeline.html
nav: yes
---
While mGBA has only been out for a relatively short time, it has a long history. The project started in April 2013, but many events prior led up to the project that is today known as mGBA. For information on upcoming releases, please [click here](#IN+THE+FUTURE).

<dl class="timeline">
<dt class="tl-prehistory">
	<aside class="tl-date">Early 2011</aside>
	Pre-History
</dt>
<dd class="tl-prehistory">
	<p>Reflecting on a long history of using existing emulators, such as the old NO$GMB and VisualBoyAdvance, endrift starts toying with writing toy emulators for the Game Boy Advance. The GBA was specifically targeted to be emulated due to the relative complexity of the system, as compared to earlier 8-bit systems, while still not being as complex as later systems like the Nintendo DS or the Nintendo 64. Furthermore, there weren't too many mature emulators out there already, like there were for the Super Nintendo and the Sega Genesis. Plus, endrift had used VBA the most of any emulator, so it was the natural choice for improving upon.</p>

	<p>None of these early attempts amounted to anything of mention.</p>
</dd>
<dt class="tl-old">
	<aside class="tl-date">July 2012</aside>
	"I have a terrible idea!"
</dt>
<dd class="tl-old">
	<p>Inspired by the new proliferation of ever-fancier JavaScript tech demos, such as Grant Galitz's GameBoy Online and Fabrice Bellard's JavaScript PC, endrift says, "I have a terrible idea," but decides to work on it regardless of it indeed being a terrible idea: a Game Boy Advance emulator written in JavaScript. In early July, work started on what would naturally be called GBA.js.</p>
</dd>
<dt class="tl-old">
	<aside class="tl-date">October 2012</aside>
	GBA.js beta 1
</dt>
<dd class="tl-old">
	<p>Prompted by an unceremonious porting of VBA-M to JavaScript using emscripten and WebGL, which was branded as the "world's first WebGL-based JS GBA emulator", and indeed seemingly the first "JavaScript" GBA emulator, endrift decided to release an early beta of GBA.js. It was buggy, had poor compatibility and didn't even support all of the standard GBA hardware, but it was entirely JavaScript, and was way less thrown-together than a two-week port of someone else's project. The beta was posted on Hacker News and was on the front page for the better part of a day, but ultimately did not gain much traction.</p>
</dd>
<dt>
	<aside class="tl-date">April 2013</aside>
	"I have an even worse idea...!"
</dt>
<dd>
	<p>In the wake of the increasingly good compatibility of GBA.js, but the seeming roadblock in hopes that it may ever support the link cable, endrift has an even worse idea (by some metrics): write a fast, native emulator that can run on low-end hardware such as the Raspberry Pi and communicate with *real* Game Boy Advance consoles over I/O pins. Seeing the poor performance of VBA-M on the Raspberry Pi, this seemed like an exceedingly difficult goal. But work began anyway on a project tentatively called GBAc.</p>
	<p>Taking large swathes of GBA.js's code, translated into C, and only fully rewriting the ARM7 core and video rendering code with optimization in mind, GBAc progressed rapidly early on, but it was still considered a side-project compared to GBA.js, so work slowed substantially after an initial push. It had very poor compatibility, and would probably never amount to anything; after all, it wouldn't support Windows, being written for embedded hardware!</p>
</dd>
<dt>
	<aside class="tl-date">November 2013</aside>
	GBA.js hits release candidate, promptly dies
</dt>
<dd>
	<p>As GBA.js 1.0 looms, progress slows substantially. Some planned features appear to be impossible, performance is not as good as hoped, and since it's feature complete otherwise, all that remains is to touch it up in preparation for 1.0 final. However, after the first release candidate, work stops almost entirely. 1.0 never comes out, and focus shifts to the fledgling GBAc.</p>
	<p>GBAc needs a lot of polish before it can even become presentable, but the ideal feature list keeps growing. Windows support is added, albeit as a bit of an afterthought, a Qt GUI is added to complement the barebones SDL UI, and compatibility reaches, and eventually exceeds, that of GBA.js. All future updates to GBA.js are minor bugfixes or pull requests filed by other contributors.</p>
</dd>
<dt>
	<aside class="tl-date">13 December 2014</aside>
	mGBA 0.1.0
</dt>
<dd>
	<p>The young GBAc grows more and more by the day. It's evident that it's already ready for a public alpha, but not all the features that are desired have been implemented yet. Some features get pushed until later releases, but many of them still need to be added. Furthermore, the project doesn't even have a real name yet. GBAc was just a stand-in name, and several ideas are considered. miniGBA or microGBA are floated, due to the apparent light weight of mGBA compared to VBA-M, but with mGBA gaining size rapidly, the names are dropped and replaced with an abbreviated mGBA. The naming decision is put off for another day. As December approaches, mGBA enters crunch mode to get all the features completed before endrift starts a new job and has to put it off for awhile. With the name decision never settled, the project gets released as mGBA 0.1.0, to little fanfare.</p>
</dd>
<dt>
	<aside class="tl-date">24 January 2015</aside>
	mGBA 0.1.1
</dt>
<dd>
	<p>Due to the rushed nature of the release, it's only natural that bugs would slip through unnoticed. With initial feedback from some early testers, a slew of bugs are fixed, and mGBA 0.1.1 is released.</p>
</dd>
<dt>
	<aside class="tl-date">3 April 2015</aside>
	mGBA 0.2.0
</dt>
<dd>
	<p>mGBA 0.2.0 is released, two years after work on it started. It includes the addition of several major features, including:</p>
	<ul>
		<li>Link cable support within multiple instantiations of the emulator</li>
		<li>Cheat code support</li>
		<li>Improved user interface</li>
		<li>Internal support for many of the sensors games use, although not outwardly exposed</li>
	</ul>
	<p>It was received much more warmly than 0.1, but the question was still floated as to "why" another GBA emulator is needed. Regardless, progress continues.</p>
</dd>
<dt>
	<aside class="tl-date">13 May 2015</aside>
	mGBA 0.2.1
</dt>
<dd>
	<p>0.2.1 contains another large slew of bugfixes a month after 0.2.0 came out. 0.2.2 was intended to be released another month later, but got scraped due to the difficulty of backporting fixes from the upcoming 0.3 branch.</p>
</dd>
<dt>
	<aside class="tl-date">August 2015</aside>
	mGBA ported to Nintendo 3DS, Wii, and PlayStation Vita
</dt>
<dd>
	<p>Although too late to be ready for 0.3.0, mGBA gets ported as homebrew to three game platforms: the Nintendo 3DS, the Wii and the PlayStation Vita. Early alpha builds of the emulator are posted, and drive forward performance and internal architecture.</p>
</dd>
<dt>
	<aside class="tl-date">16 August 2015</aside>
	mGBA 0.3.0
</dt>
<dd>
	<p>mGBA 0.3.0 is released, four months after 0.2.0 comes out, and with it a glut of new features, including:</p>
	<ul>
		<li>Cartridge sensors are now properly exposed to controllers</li>
		<li>The beginnings of a debug interface</li>
		<li>A basic on-screen display</li>
		<li>Several user-experience improvements</li>
	</ul>
	<p>Many bugs are fixed as well, including all of the bugs that were fixed for the never-released 0.2.2.</p>
</dd>
<dt class="tl-future" id="IN+THE+FUTURE">
	<aside class="tl-date">ETA 17 October 2015</aside>
	mGBA 0.3.1
</dt>
<dd class="tl-future">
	<p>Tentative release date of mGBA 0.3.1, which will contain bugfixes.</p>
</dd>
<dt class="tl-future">
	<aside class="tl-date">ETA 30 October 2015</aside>
	mGBA betas for Nintendo 3DS, Wii and PlayStation Vita
</dt>
<dd class="tl-future">
	<p>Tentative release date of mGBA betas for homebrew consoles. Final versions will be released along with 0.4.0.</p>
</dd>
<dt class="tl-future">
	<aside class="tl-date">ETA mid-November 2015</aside>
	mGBA 0.3.2
</dt>
<dd class="tl-future">
	<p>Tentative release date of mGBA 0.3.2, which will contain bugfixes.</p>
</dd>
<dt class="tl-future">
	<aside class="tl-date">ETA 13 December 2015</aside>
	mGBA 0.4.0
</dt>
<dd class="tl-future">
	<p>Tentative release date of mGBA 0.4.0, which will contain many features, potentially including:</p>
	<ul>
		<li>Online multiplayer support</li>
		<li>Library view</li>
		<li>More debug features</li>
		<li>Wireless adapter support</li>
		<li>Basic TASing features</li>
		<li>Dynamic recompiler for ARM</li>
	</ul>
	<p>However, due to the heavy focus on ports during this cycle, many features may get delayed to 0.5.0.</p>
</dd>
<dt class="tl-future">
	<aside class="tl-date">ETA April 2016</aside>
	mGBA 0.5.0
</dt>
<dd class="tl-future">
	<p>Tentative release date of mGBA 0.5.0, which will contain many features, including features delayed from 0.4.0 and potentially including:</p>
	<ul>
		<li>Basic e-Reader support</li>
		<li>More debug features</li>
		<li>Wireless adapter support</li>
		<li>Lua scripting</li>
		<li>Improved TASing features</li>
		<li>Dynamic recompiler for MIPS</li>
	</ul>
</dd>
<dt class="tl-future">
	<aside class="tl-date">ETA mid-2016</aside>
	mGBA 0.6.0
</dt>
<dd class="tl-future">
	<p>Tentative release date of mGBA 0.6.0, which will contain many features, including features delayed from 0.5.0.</p>
</dd>
<dt class="tl-future">
	<aside class="tl-date">ETA late 2016</aside>
	mGBA 1.0.0
</dt>
<dd class="tl-future">
	<p>Tentative release date of mGBA 1.0.0, which will be feature complete GBA support with many additional features.</p>
</dd>
<dt class="tl-future">
	<aside class="tl-date">???</aside>
	mGBA 2.0.0?
</dt>
<dd class="tl-future">
	<p>Who knows what's next?</p>
</dd>
</dl>

For a more comprehensive set of tasks and features for upcoming releases, please refer to [the thread on the forums](https://forums.mgba.io/showthread.php?tid=3).
