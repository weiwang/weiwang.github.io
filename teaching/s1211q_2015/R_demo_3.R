## set operations
s1 = c("TH", "TT")
s2 = c("HT", "TT")
union(s1, s2)
interset(s1, s2)
setdiff(s1, s2i)

## Law of Large Numbers
sample(c("T", "H"), 100, replace=T)
table(sample(c("T", "H"), 100, replace=T))/100

## Calculate Pi using monte carlo method
n <- 1000
x <- runif(n, min=-1, max=1)
y <- runif(n, min=-1, max=1)
mean((x^2+y^2)<1)*4
