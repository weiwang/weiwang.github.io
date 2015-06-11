---
layout: teaching
title:  R Question HW4
---

# Break a stick randomly in halves  #

Break a stick of length 1 randomly into havles, and find the length of the longer piece

```r
l1 = runif(1, min=0, max=1) # length of the first half
l2 = 1 - l1 # length of the second half
l = max(p1, p2) # length of the longer half
```

Repeat this 100,000 times and find the sample mean of the length of the longer piece.

# Break a stick randomly in three pieces #

Break a stick of length 1 randomly into three pieces, and find the length of the
longest piece. To split, you can draw two random numbers from [0,1] uniform
distribution.

```r
splits = runif(2, min=0, max=1) # find the two spliting points, 2 random draw from [0,1] uniform
## how to find the length of the three pieces?
```

Repeat this 100,000 times and find the sample mean of the length of the longest piece.
