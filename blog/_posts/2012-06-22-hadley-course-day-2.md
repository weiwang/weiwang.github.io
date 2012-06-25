---
layout: post
title: "Notes from Hadley R course: Day 2"
description: ""
category: Programming
tags: [R]
---

## Layout of R package source directory

No that interesting. Chambers's book is a good reference, if we have no patience
with *Writing R Extension*.

## Package and Library

- Set R_LIBS="~/R" v.s. .libPaths("~/R")
- ?Startup to see details of R initialization
- Upgrade R packages after upgrading R

    {% highlight r %}
    update.packages(checkBuilt = T, ask = F)   {% endhighlight %}

## Documenting R packages with Roxygen2

Work flow
- Update rd comments in R source files
- document("pkg/path")
- check_doc("pkg/path")
- show_rd(, "rd files")

## Useful links

- [Lexical Scoping of R](http://darrenjw.wordpress.com/2011/11/23/lexical-scope-and-function-closures-in-r/)
- [Environments and Namespaces](http://obeautifulcode.com/R/How-R-Searches-And-Finds-Stuff/)
