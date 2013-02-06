---
layout: notebook
title: "Notes on R Data Import/Export"
description: ""
category:
tags: [XeTex]
---

<!--Some ideas: functions I want to talk about cat, scan, sink, file, open, close, pipe, dump, serialize-->


There are basically two reasons why you might want to use XeTeX instead of TeX: 1. XeTeX can directly utilize system fonts other than the fonts that are packaged specifically for TeX; 2. XeTeX assume Unicode (UTF-8 encoding) input by default, so inputing Chinese cannot be easier.

**fontspec**

The intergration of system fonts with TeX is achieved by package _fontspec_. General font selections are made through the following commands.

    {% highlight tex %}
    \fontspec [font feature] {font name}
    \setmainfont [<font feature>] {<font name>} %% Roman/Serif font
    \setsansfont [<font feature>] {<font name>} %% Sans-Serif is also known as Gothic font
    \setmonofont [<font feature>] {<font name>} %% fixed-width
    \newfontfamily <cmd> [font feature] {font name}
    {% endhighlight %}    

To mix CJK input with English input, we need to load a package
   
    {% highlight tex %}
    \usepackage[BoldFont，CJKnumbb] {xeCJK}
    \setCJKmainfont{<CJK font name>}
    {% endhighlight %}
