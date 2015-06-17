---
layout: teaching
title:  R Question HW5
---

# Coverage Probability of Confidence Intervals #

We observe 100 IID data point from normal distribution N(mu, sigma^2), assume sigma is known and is equal to 1. A 95% confidence interval can be constructed following equation (7.5) in the textbook. Set the true value of mu to be 0, generate the whole process 10,000 times and report the coverage probability of the confidence interval (7.5).

```r
rnorm(100, mean=0, sd=1) # generating 100 random number from N(0, 1)
# You need to repeat the process 10,000 times,
# and find out how many times the CI covers the true value
```
