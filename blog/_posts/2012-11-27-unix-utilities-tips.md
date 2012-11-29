---
layout: post
title: "Unix Utilities Tips"
description: ""
category: memo
tags: [S4]
---

Learning a programming language is like learning a real language, if you don't
practice, you forget. I spent some time at various stages of the previous few
years trying to become better at Unix Shell, but my tendency to wander around
and try different things, to my chagrin, makes me a very inconsistent
learner. In this entry, I try to record the essential Unix Shell command that I,
from time to time, needed to google and relearn. Hopefully googling part will
becoem obsolete from now on.

**Processes

    {% highlight bash %}
    ## list all running processes
    ps aux          #ps stands for process status
    {% endhighlight  %}

**sed
                     
    {% highlight bash %}
    sed 7q .emacs   #display the first 7 lines of the file 
    {% endhighlight %}

**grep

    {% highlight bash %}
    ## grep recursively 
    grep -r --include="*.el" ess-version ~/elisp 
    {% endhighlight %}
