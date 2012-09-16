## This is a function that simulate coin tosses
coin_toss <- function(n=1){
  sample(c("T", "H"), n, prob=c(.5, .5), replace=TRUE)
}

## One toss
coin_toss()
## 100 tosses
coin_toss(n=100)

## This is a function that simulate the battery life
battery <- function(n=1){ rexp(n, rate=.1)}

## Randomly test one battery
battery()
## Randomly test 100 batteries
battery(n=100)


## Law of Large Numbers
sample(c("T", "H"), 100, replace=T)
table(sample(c("T", "H"), 100, replace=T))/100

## Calculate Pi using monte carlo method
n <- 1000
x <- runif(n, min=-1, max=1)
y <- runif(n, min=-1, max=1)
mean((x^2+y^2)<1)*4


## combination
choose(7, 3)

## R doesn't have build-in permutation function, but
## it is easy to write one with choose() and factorial()
perm <- function(k, n){choose(k, n)*factorial(n)}
perm(7, 3)
