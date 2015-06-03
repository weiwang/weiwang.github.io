## Distribution specific functions in R

## Binomial
rbinom(n=10, size=5, prob=.1)
dbinom(x=2, size=5, prob=.6) # pmf of Bionmial
pbinom(q=2, size=5, prob=.6) # cdf of Binomial
qbinom(p=.5, size=5, prob=.5) # qunatile function of Binomial, here we are finding median (p=.5)

## Hypergeometric
rhyper
