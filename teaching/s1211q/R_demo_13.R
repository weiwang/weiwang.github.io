## Central Limit Theorem Demo
a <- rbinom(1, size=100, p=.3)
a <- rbinom(100, size=100, p=.3)/100; hist(a)
a <- rbinom(10000, size=100, p=.3)/100; hist(a)
a <- rbinom(100000, size=100, p=.3)/100; hist(a)

