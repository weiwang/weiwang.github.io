---
layout: post
title: "XeLaTex and beautiful fonts"
description: ""
category: 
tags: [XeTex]
---
{% include JB/setup %}

<!--Some ideas: kpsexpand, add-hook, lambda(), differences between emacs variables commands function, \newcommadn, \renewcommand-->


There are basically two reasons why you might want to use XeTeX instead of TeX: 1. XeTeX can directly utilize system fonts other than the fonts that are packaged specifically for TeX; 2. XeTeX assume Unicode (UTF-8 encoding) input by default, so inputing Chinese cannot be easier.

**fontspec**

The intergration of system fonts with TeX is achieved by package _fontspec_. General font selections are made through the following commands.

    \fontspec [hfont featuresi] {hfont namei}
    \setmainfont [hfont featuresi] {hfont namei} %% Roman/Serif font
    \setsansfont [hfont featuresi] {hfont namei} %% Sans-Serif is also known as Gothic font
    \setmonofont [hfont featuresi] {hfont namei} %% fixed-width
    \newfontfamily hcmdi [hfont featuresi] {hfont namei}

                   
