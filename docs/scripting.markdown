---
layout: page
title: "Scripting API"
permalink: /docs/scripting.html
toc: yes
nav: yes
---
Starting with version 0.10, mGBA has built-in scripting capabilities. To use the scripting capabilities, click on the "Scripting..." item from the Tools menu. Currently, only Lua scripting is supported.

Most of the following documentation is automatically generated from version [{{ site.data.scripting.version.string }}](https://mgba.io/r/{{ site.data.scripting.version.commit | split: "-dirty" | first }}).

## Top-level objects

<section id="section-root" markdown="1">

By default, the following objects are available at the top level.
When a game is loaded, the additional `emu` object is also available, and is an instance of {{ "struct::mScriptCoreAdapter" | canonicalize_type }}.

{% assign root = site.data.scripting.root | sort -%}
{% for item in root %}
{%- unless item[1].comment -%}{%- continue -%}{%- endunless -%}
<h3 id="root-{{ item[0] }}">{{ item[0] }}</h3>
{{ item[1].comment | linkify_docstring }}
{%- if item[1].type == "table" -%}
{%- assign table = item[1].value | sort: "key" -%}
{%- assign methodcount = 0 -%}
{%- assign membercount = 0 -%}
{%- for member in table -%}
	{%- assign membertype = member.type -%}
	{%- assign membertypeinfo = site.data.scripting.types[membertype] -%}
	{%- if membertypeinfo.base == "function" -%}
		{%- assign methodcount = methodcount | plus: 1 -%}
	{%- else -%}
		{%- assign membercount = membercount | plus: 1 -%}
	{%- endif -%}
{%- endfor -%}
{%- if methodcount > 0 -%}
<h4>Functions</h4>
<dl class="class-method">
{%- for member in table -%}
{%- unless member.comment -%}{%- continue -%}{%- endunless -%}
{%- assign scope = item[0] -%}
{%- assign membertype = member.type -%}
{%- assign membertypeinfo = site.data.scripting.types[membertype] -%}
{%- assign membername = member.key -%}
{%- if membertypeinfo.base != "function" -%}
{{ membername }}
{%- else -%}
{%- include class-method.html minparams=0 -%}
{%- endif -%}
<dd>
{{ member.comment | linkify_docstring }}
</dd>
{%- endfor -%}
</dl>
{%- endif -%}
{%- endif -%}
{% endfor %}

</section>

## Classes

<section id="section-classes">
{%- assign types = site.data.scripting.types | sort -%}
{% for type in types %}
{%- if type[1].base != 'object' -%}{%- continue -%}{%- endif -%}
{%- assign name = type[0] | split: '::' -%}
{%- if name[0] != 'struct' -%}{%- continue -%}{%- endif -%}
{%- assign info = type[1] -%}
<h3 id="class-{{ name[1] | canonicalize_class }}">{{ name[1] | canonicalize_class }}</h3>
{{ info.comment | linkify_docstring }}
{% if info.parent -%}
<p>Parent class: {{ info.parent }}</p>
{%- endif %}
{%- assign members = info.members | sort -%}
{%- assign methodcount = 0 -%}
{%- assign membercount = 0 -%}
{%- for member in members -%}
	{%- assign membertype = member[1].type -%}
	{%- assign membertypeinfo = site.data.scripting.types[membertype] -%}
	{%- if membertypeinfo.base == "function" -%}
		{%- assign methodcount = methodcount | plus: 1 -%}
	{%- else -%}
		{%- assign membercount = membercount | plus: 1 -%}
	{%- endif -%}
{%- endfor -%}
{%- if methodcount > 0 %}
{%- assign scope = name[1] -%}
<h4>Methods</h4>
<dl class="class-method">
{%- for member in members -%}
	{%- assign membertype = member[1].type -%}
	{%- assign membertypeinfo = site.data.scripting.types[membertype] -%}
	{%- assign membername = member[0] -%}
	{%- if membertypeinfo.base != "function" -%}{%- continue -%}{%- endif -%}
	{%- include class-method.html minparams=1 -%}
<dd>
{{ member[1].comment | linkify_docstring }}
</dd>
{%- endfor -%}
</dl>
{%- endif -%}
{%- if membercount > 0 -%}
<h4>Members</h4>
<dl class="class-member">
{%- for member in members -%}
{%- assign membertype = member[1].type -%}
{%- assign membertypeinfo = site.data.scripting.types[membertype] -%}
{%- if membertypeinfo.base == "function" -%}{%- continue -%}{%- endif -%}
{%- assign memberprefix = member[0] | slice: 0 -%}
{%- if memberprefix == "_" -%}{%- continue -%}{%- endif -%}
<dt id="member-{{ name[1] | canonicalize_class}}.{{ member[0] }}">{{ member[0] }} : {{ member[1].type }}</dt>
<dd>
{{ member[1].comment | linkify_docstring}}
</dd>
{%- endfor -%}
</dl>
{%- endif -%}
{% endfor %}
</section>

## Constants

<section id="section-constants">
{%- assign constants = site.data.scripting.root.C.value | sort: "key" -%}
{%- for namespace in constants -%}
<div>
<h3 id="constant-{{ namespace.key }}">{{ namespace.key }}</h3>
<table class="scripting-constants">
{%- assign values = namespace.value | sort: "value" -%}
{%- for value in values -%}
  <tr>
    <td class="constant-name">{{ value.key }}</td>
    <td class="constant-value">{{ value.value }}</td>
  </tr>
{%- endfor -%}
</table>
</div>
{%- endfor -%}
</section>

## Memory domains

<section id="section-memdomains">
<div>
<h3>GBA</h3>
{% assign values = site.data.scripting.emu.gba.memory -%}
{%- assign word = 32 -%}
{%- include memory-domain.html -%}
</div>
<div>
<h3>GB</h3>
{% assign values = site.data.scripting.emu.gb.memory -%}
{%- assign word = 16 -%}
{%- include memory-domain.html -%}
</div>
</section>

## Registers

<section id="section-registers">
<div>
<h3>GBA</h3>
{% assign values = site.data.scripting.emu.gba.registers -%}
{%- include registers.html -%}
</div>
<div>
<h3>GB</h3>
{% assign values = site.data.scripting.emu.gb.registers -%}
{%- include registers.html -%}
</div>
</section>
