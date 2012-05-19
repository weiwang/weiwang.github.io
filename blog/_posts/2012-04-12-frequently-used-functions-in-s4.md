---
layout: post
title: "Frequently used functions in S4"
description: ""
category: memo
tags: [S4]
---

[This](http://cran.r-project.org/doc/contrib/Genolini-S4tutorialV0-5en.pdf) is a very helpful introduction/summary of S4 methods.  I often have memory failure when dealing with S4 methods. So I document the basic S4 utilities functions below.  MI is used as an example. This page has {{ page.content | number_of_words }} words.

    {% highlight r linenos %}
    ## Two most basic definition functions 
    setClass("missing_data.frame", representation(...), prototype(), contains=FatherClass...)                                    
    setGeneric(f="mi", def=function(var1, var2, ...) standardGeneric("mi"))                 

    args(mi) # number of arguments for a Generic function                                             
    setMethod("mi", signature(var1= , var2= ,...), def=function(...) ...)

    ## To see slots names
    slotNames("mi")
    getSlots("mi")
    getClass("mi")

    ## see methods 
    showMethods(f="mi") # all possible methods for Generic mi
    showMethods(classess="mi") # all possible methods for class mi
    getMethods(f="mi", signature(...))

    ## VIRTUAL classes, Registered old-style S3 classes, an example from MI
    setOldClass("data.frame")
    setClass("missing_data.frame",  representation(...), contains = "data.frame")
    {% endhighlight  %}
