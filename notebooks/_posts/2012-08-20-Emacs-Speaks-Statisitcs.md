---
layout: notebook
title: "Emacs Speaks Statistics"
description: ""
category: memo
tags: [S4]
---

The emacs mode that I use the most frequently is ESS. To keep myself on the
bleeding edge of it, I watch its github repository. However, I pull
from the the source very rarely, so that whenever I pull after several months, I
need to re-teach myself some of the fundamentals of ESS. This is not particularly
efficient. So I use this post as a reminder.

**Installation**

This part used to confuse me. I went through the standard unix compiling sequence of 

    make
    make install

to install a new version of ESS. However, the laziest way to install ESS doesn't
require any compilation at all. I still cannot wrap my head around this whole
compiled elisp thing, but my impression is that script lisp codes reside in files
that end with .el and compiled elisp codes reside in files that end with .elc;
And the main difference is speed. As for an ordinary user like me, sticking to
the laziest way is enough. The key is to know where the ESS/ folder should live
by default in the system. On a Mac, the default path is
<code>/Application/Emacs.app/Contents/Resources/site-lisp/</code>. On a Linux,
the default path is <code>/usr/share/emacs23/site-lisp/</code>. After updating
the repository, we can check the version of ESS by <code>C-h v
ess-version</code>.
