## Central Limit Theorem Demo
a <- rbinom(1, size=10, p=.3)
a <- rbinom(100, size=10, p=.3)
mean(a)

a <- rep(0, 1000)
for(i in 1:1000){
  sample_each <- rbinom(100, size=10, p=.3)
  a[i] <- mean(sample_each)
}
hist(a)
