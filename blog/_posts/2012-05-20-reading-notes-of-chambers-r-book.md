---
layout: post
title: "Reading notes of Chambers' R book: (Almost) everything is a function call"
description: ""
category: computing
tags: [R, Functional programming]
---

I am beginning to read John Chambers' R book, _Software of Data Analysis_. As the principle designer of _S_, probably no one is more qualified than John Chambers to talk about the inner mechanism of _R_. As an impatient reader as I am, I jumped directly to the most juicy section, called _How R Works_. It was an interesting read, and clarified a number of concepts that I only had quite vague ideas about previously. Now I am working on other chapters and I do recommend all ``intermediate'' level R users like me to read this book.

**R is a lot like Functional PLs**

Programming languages have paradigms. C is a procedural programming language and C++ is an object-oriented programming language. But there is a more eccentric but older programming paradigm, functional programming language. It is like Indie movies, having a small but loyal followings. S/R is strongly influenced by functional programming languages, like _Lisp_, from its early days. In essence, almost everything in R can be described as a function call to the evaluator. Even though we see C-style syntax, like assignment '<-', it is actually implemented by a call to the corresponding function \`<-\`, and then evaluating it. Here I am using the grave accent "`", which means I am quoting the semantic meaning of the string, rather than the acute accent "'", the literal meaning. 

To borrow from Regexp, R mostly work as (function call + evaluator)*.

**Occasionally R is ([constant, name, promise] + evaluator)***

There are three main exceptions to the uniformity of R's working flow. So instead of evaluating a function call, the input to the evaluator could be a constant, like "1+2i", a name of an object, like "iris", or a promise, which is related the lazy loading mechanism in R.

**What is a Call object?**

I always find the concept of a "call" in R very unintuitive. A "call" is actually a verb, so it is the intermediate step from the input to the evaluator, which is an expression (often consist of a name of a function and its arguments), to the value returned by the evaluators. 

All the arithmetic operations are implemented as a function. The most interesting case might be the negative numbers. They are actually a function call like this

    {% highlight r %}
    R> class(quote(-9))
    [1] "call"
    {% endhighlight %}

We can get a Call object by quoting a function itself (instead of a function name, which will give us a Name object).

    {% highlight r %}
    R> class(`ls`)
    [1] "function"
    R> class(quote(ls))
    [1] "name"
    R> class(quote(ls()))   
    [1] "call"
    {% endhighlight %}

**Different types of functions**

As we see, functions are the building blocks of R. Apparently, they all belong to the R Function class, but actually there are two groups of them. One that are written in R, the other that are written in other languages, i.e., C/C++ and Fortran. They are of different R internal types.

    {% highlight r %}
    R> typeof(`ls`)  % ordinary functions written in R
    [1] "closure"
    R> typeof(`dim`) % Primitive function wirtten in lower-level langs
    [1] "builtin"
    R> typeof(`[<-`) % Most operators are of another type of Primitive functions
    [1] "special"
    {% endhighlight %}

The mechanism of calling to R functions and Primitive functions are very different, especially in terms of *Lazy Evaluation*. Read the book if you want to delve into the details. 
