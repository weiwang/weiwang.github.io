## set operations
s1 = c("TH", "TT")
s2 = c("HT", "TT")
union(s1, s2)
intersect(s1, s2)
setdiff(s1, s2)
setdiff(s2, s1)

## Law of Large Numbers
N <- 10
set.seed(1211)
toss <- sample(c("T", "H"), N, replace=T) # sample from {T, H} N times with replacement
sum(toss == 'H')/N # proportion of head


## Calculate Pi using monte carlo method
N <- 100000
set.seed(1211) 
x <- runif(N, min=-1, max=1) # generating pseudo random numbers
set.seed(1121)
y <- runif(N, min=-1, max=1)
mean((x^2+y^2)<1)*4
