laguardia <- c(67, 72, 74, 62, 56, 66, 65, 59, 61, 69, 74, 69, 66, 68, 58, 64, 66, 57, 68, 62, 59, 73, 61, 61, 57, 58, 57, 67, 81, 79, 76, 78, 74, 67, 84, 85, 79, 82, 87, 90, 87, 93, 92, 82, 80, 79, 77, 72, 65, 73, 76, 77, 76, 76, 76, 75, 78, 73, 80, 77, 83, 84, 85, 81, 84, 83, 83, 88, 92, 92, 89, 82, 73, 81, 91,  80, 81, 82, 84, 87, 85, 74, 81, 82, 86, 85, 82, 86, 88, 86, 83, 81, 81, 81, 82, 86, 85, 87, 89, 90,  90, 92, 86, 86, 82, 80, 79, 77, 79, 76, 78, 78, 77, 72, 75, 79, 81, 86, 88, 97, 94, 96, 94, 91, 92, 93, 93, 87, 84, 80, 78, 75, 73, 81, 76, 77, 71, 71, 78, 67, 76, 68, 82, 64, 71, 81, 69, 63, 70, 77,  75, 76, 68)
hist(laguardia, freq=TRUE) # freq histogram
hist(laguardia, freq=FALSE) # density histogram

mtcars # a build-in data set
attach(mtcars) # so I can use all variables inside matcars
summary(mpg)
mean(mpg)
median(mpg)
quantile(mpg, c(.25, .75))
quantile(mpg, .5)
boxplot(mpg)
summary(qsec)
boxplot(qsec) 
boxplot(mtcars) # draw comparative boxplots



sd(qsec) # standard deviation
var(qsec) # variance
(sum(qsec^2)-mean(qsec)^2*length(qsec))/(length(qsec)-1) # alternative definition
