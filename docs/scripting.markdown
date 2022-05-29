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

By default, the following objects are available at the top level:

<dl class="root-scope">
<dt>C</dt>
<dd>A table containing the <a href="#constants">exported constants</a></dd>
<dt>callbacks</dt>
<dd>Singleton instance of {{ "struct::mScriptCallbackManager" | canonicalize_type }}</dd>
<dt>console</dt>
<dd>Singleton instance of {{ "struct::mScriptConsole" | canonicalize_type }}</dd>
</dl>

When a game is loaded, the `emu` object is also available, and is an instance of {{ "struct::mScriptCoreAdapter" | canonicalize_type }}.

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
<h4>Methods</h4>
<dl class="class-method">
{%- for member in members -%}
	{%- assign membertype = member[1].type -%}
	{%- assign membertypeinfo = site.data.scripting.types[membertype] -%}
	{%- if membertypeinfo.base != "function" -%}{%- continue -%}{%- endif -%}
<dt id="method-{{ name[1] | canonicalize_class}}.{{ member[0] }}">
	{%- assign paramcount = membertypeinfo.parameters.list | size -%}
	{%- assign returncount = membertypeinfo.return.list | size -%}
	{{ member[0] }}<span class="function-parameters">(
	{%- if paramcount > 1 -%}
		{%- assign count = 0 -%}
		{%- for param in membertypeinfo.parameters.list -%}
			{%- if count == 0 -%}
				{%- assign count = 1 -%}
				{%- continue -%}
			{%- elsif count == 1 %}
				{%- assign count = 2 -%}
			{%- else -%},&nbsp;
			{%- endif -%}
	<span class="function-parameter">{{ param.name }} : {{ param.type | canonicalize_type }}{% if param contains 'default' %} = {% if param.default == nil %}nil{% else %}{{ param.default }}{% endif %}{% endif %}</span>
		{%- endfor -%}
	{%- endif -%}
	)</span>
	{%- if returncount == 1 -%}
	<span class="function-return">: {{ membertypeinfo.return.list[0].type | canonicalize_type }}</span>
	{%- endif -%}
</dt>
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
