## Distribution specific functions in R

## Binomial
dbinom(x=2, size=5, prob=.6) # pmf of Bionmial
pbinom(q=2, size=5, prob=.6) # cdf of Binomial
qbinom(p=.5, size=5, prob=.5) # qunatile function of Binomial, here we are finding median (p=.5)

## Poisson
dpois(x=4, lambda=1.5) # pmf of Poisson
ppois(q=4, lambda=1.5) # cdf of Poisson
qpois(p=.75, lambda=1.5) # quantile function of Poisson, here we are finding third fourth (p=.75)

## Normal
dnorm(x=2, mean=2, sd=5) # pdf of Normal
pnorm(q=2, mean=2, sd=5) # cdf of Normal
qnorm(p=.5, mean=2, sd=5) # quantile function of Normal, here we are finding the median (because of symmetry, it is also the mean)
