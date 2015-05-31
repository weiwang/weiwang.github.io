---
layout: teaching
title:  R Question HW2
---

# Distribution of the maximum #

For this question, you need to perform a computer experiment to find the
distribution of the maximum value of 10 independent uniform random variables. To
simulate 10 independent [0,1] uniform random variables, do

```r
runif(10, min=0, max=1)
```

Repeat this 1,000 times (use a `for` loop) and record the maximum value (use
`max` function) for each iteration. Find the mean and sd of the 1,000 maximum
values.
