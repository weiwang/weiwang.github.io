---
layout: notebook
title: "General Emacs Tips"
description: ""
category: research
tags: [S4]
---

*Running Different Versions of R Processes*

I want to be able to run different versions of R, e.g., R-stable and R-devel. Of
course, first of all, I need to have a R-devel executable sitting in my PATH,
which is built from the svn repository of R-devel. The best way to keep
up-to-date with R-devel was discussed in this R-devel [thread]
(http://r.789695.n4.nabble.com/Keeping-up-to-date-with-R-devel-td4659790.html). However,
including R-devel in the machine PATH doesn't mean that Emacs knows where to look
for it. So it is necessary to add the path to the `exec-path` of Emacs

    {% highlight cl %}
    (setenv "PATH" (concat (getenv "PATH") ":~/bin/"))
    (setq exec-path (append exec-path '("~/bin/"))) 
    {% endhighlight %}

Then, we need to make sure that `ess-r-versions` includes `R-devel`     
      
    {% highlight cl %}
    (setq ess-r-versions '("R-2" "R-3" "R-devel" "R-patched"))
    {% endhighlight %}

As from the `ess-r-versions` documentation

>List of partial strings for versions of R to access within ESS.  Each string
>specifies the start of a filename.  If a filename beginning with one of these
>strings is found on `exec-path', a M-x command for that version of R is made
>available.

*Make M-x idoable*

`ido` mode is super convenient for emacs users. It is the auto-complete of the
minibuffer. To make M-x idoable, put the following code in the `.emacs` file,
which is borrowed from EmacsWiki

    {% highlight cl %}
    (global-set-key
     "\M-x"
     (lambda ()
       (interactive)
       (call-interactively
        (intern
         (ido-completing-read
          "M-x "
          (all-completions "" obarray 'commandp))))))
    {% endhighlight %}


