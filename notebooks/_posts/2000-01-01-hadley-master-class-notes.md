---
layout: notebook
title: "Notes from Hadley's R course, 6/21/12-6/22/12"
description: ""
category: Programming
tags: [R]
---
Four common types of ATOMIC vector

- logical
- numeric
- character
- integer


Regression design matrix

- model=TRUE

Stop R from converting results to a simpler form

- drop=FALSE

** Controlling Evaluation **

- substitute
- deparse: expression => string
- the use of deparse(substitute()) is common, like the labeling of variables in plotting
- remember eval always comes with an Environment
- eval and evalq
- the magic of substiture(list(...))

** First-order Funciton **

- match.fun()
- environment can be thought as a list of objects
    {% highlight r %}
    f <- function(){x <- 1; function() 1}
    g <- f()
    as.list(environment(g)) {% endhighlight %}
- differences between parent.frame() and parent.env()
- When you look at closures, inspect their environment


** Object Oriented **

- structure() to create a new class. All facilities need to be designed
  yourself.
- In S3/S4, methods are associated with generic functions, not classes. This is a major
  main difference from common OO languages.
- By default, NA is not a level in factor, but you can make it an extra level
  with addNA().
- Class Hierarchy in R in mostly implicit.

** Best Design Practice **

- Avoid functions that have non-standard
evaluation rules (no subset, with,
transform).
- Avoid functions that can have different
types of output (sapply, always use drop =
FALSE).
- Be explicit about missings.
- Debugging in batch-script mode

    {% highlight r %}
    options(error = quote({dump.frames(to.file = TRUE); q()}))
    {% endhighlight %}

** Layout of R package source directory **

No that interesting. Chambers's book is a good reference, if we have no patience
with *Writing R Extension*.

** Package and Library **

- Set R_LIBS="~/R" v.s. .libPaths("~/R")
- ?Startup to see details of R initialization
- Upgrade R packages after upgrading R

    {% highlight r %}
    update.packages(checkBuilt = T, ask = F)   {% endhighlight %}

** Documenting R packages with Roxygen2 **

Work flow
- Update rd comments in R source files
- document("pkg/path")
- check_doc("pkg/path")
- show_rd(, "rd files")

** Useful link **

- [Lexical Scoping of R](http://darrenjw.wordpress.com/2011/11/23/lexical-scope-and-function-closures-in-r/)
- [Environments and Namespaces](http://obeautifulcode.com/R/How-R-Searches-And-Finds-Stuff/)
