## now we have grades of two groups of students
grades_1 <- c(77, 79, 82, 90, 76, 85, 100, 74, 89, 77, 72, 66, 84, 89, 73, 60, 92, 94, 73, 68, 97, 80, 74, 75, 80, 89, 75, 81, 64, 97)
grades_2 <- c(78,80,70,79,83,78,86,76,77,85,73,80,81,79,75,78,79,77,87,73,77,89,74,79,84,76,87,81,78,73)
hist(grades_1)
hist(grades_2)
## measure of variation
sd(grades_1)
sd(grades_2)
boxplot(grades_1)

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
