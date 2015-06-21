## mean and variance of sample mean
iter=10000
N = 100
sample_means <- rep(0, iter)
for (i in 1:iter) {
    data <- rnorm(N, mean=0, sd=1)
    sample_means[i] <- mean(data)
}
## expectation of sample mean is mu=0
## variance of sample mean is sigma^2/N = .01
mean(sample_means)
var(sample_means)

## use a difference distribution: poisson
sample_means <- rep(0, iter)
for (i in 1:iter) {
    data <- rpois(N, lambda=1)
    sample_means[i] <- mean(data)
}
## expection of sample mean is lambda=1
## variance of sample mean is lambda/N = .01
mean(sample_means)
var(sample_means)

## use a difference distribution: binomial
sample_means <- rep(0, iter)
for (i in 1:iter) {
    data <- rbinom(N, size=25, p=.1)
    sample_means[i] <- mean(data)
}
## expection of sample mean is np=2.5
## variance of sample mean is np(1-p)/N = 25*.1*.9/100 = 0.0225
mean(sample_means)
var(sample_means)




## coverage probability for large-sample confidence interval
iter = 10000
N = 20
alpha=.05
mu = 0
sigma = 1
cover = rep(FALSE, iter)
for(i in 1:iter) {
    data = rnorm(N, mean=mu, sd=sigma)
    x_bar = mean(data)
    sigma_hat = sd(data)
    z = qnorm(1-alpha/2, mean=0, sd=1)
    upper = x_bar + z * sigma_hat/sqrt(N)
    lower = x_bar - z * sigma_hat/sqrt(N)
    if (upper>0 & lower<0) ## CI covers true mu
        cover[i] = TRUE
}
mean(cover) ## coverage probability

## coverage probability for t-distribution interval
iter = 10000
N = 20
alpha=.05
mu = 0
sigma = 1
cover = rep(FALSE, iter)
for(i in 1:iter) {
    data = rnorm(N, mean=mu, sd=sigma)
    x_bar = mean(data)
    sigma_hat = sd(data)
    t = qt(1-alpha/2, df = N-1)
    upper = x_bar + t * sigma_hat/sqrt(N)
    lower = x_bar - t * sigma_hat/sqrt(N)
    if (upper>0 & lower<0) ## CI covers true mu
        cover[i] = TRUE
}
mean(cover) ## coverage probability



