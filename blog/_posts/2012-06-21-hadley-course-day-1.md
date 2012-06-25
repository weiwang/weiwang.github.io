---
layout: post
title: "Notes from Hadley R course: Day 1"
description: ""
category: Programming
tags: [R]
---


Four common types of ATOMIC vector

- logical
- numeric
- character
- integer
- complex
- raw

Regression design matrix

- model=TRUE

Stop R from converting results to a simpler form

- drop=FALSE

## Controlling Evaluation

- substitute
- deparse: expression => string
- the use of deparse(substitute()) is common, like the labeling of variables in plotting
- remember eval always comes with an Environment
- eval and evalq
- the magic of substiture(list(...))

## First-order Funciton

- match.fun()
- environment can be thought as a list of objects
    {% highlight r %}
    f <- function(){x <- 1; function() 1}
    g <- f()
    as.list(environment(g)) {% endhighlight %}
- differences between parent.frame() and parent.env()
- When you look at closures, inspect their environment


## Object Oriented

- structure() to create a new class. All facilities need to be designed
  yourself.
- In S3/S4, methods are associated with generic functions, not classes. This is a major
  main difference from common OO languages.
- By default, NA is not a level in factor, but you can make it an extra level
  with addNA().
- Class Hierarchy in R in mostly implicit.

## Best Design Practice

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
