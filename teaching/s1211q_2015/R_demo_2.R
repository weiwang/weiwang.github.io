laguardia <- c(67, 72, 74, 62, 56, 66, 65, 59, 61, 69, 74, 69, 66, 68, 58, 64, 66, 57, 68, 62, 59, 73, 61, 61, 57, 58, 57, 67, 81, 79, 76, 78, 74, 67, 84, 85, 79, 82, 87, 90, 87, 93, 92, 82, 80, 79, 77, 72, 65, 73, 76, 77, 76, 76, 76, 75, 78, 73, 80, 77, 83, 84, 85, 81, 84, 83, 83, 88, 92, 92, 89, 82, 73, 81, 91,  80, 81, 82, 84, 87, 85, 74, 81, 82, 86, 85, 82, 86, 88, 86, 83, 81, 81, 81, 82, 86, 85, 87, 89, 90,  90, 92, 86, 86, 82, 80, 79, 77, 79, 76, 78, 78, 77, 72, 75, 79, 81, 86, 88, 97, 94, 96, 94, 91, 92, 93, 93, 87, 84, 80, 78, 75, 73, 81, 76, 77, 71, 71, 78, 67, 76, 68, 82, 64, 71, 81, 69, 63, 70, 77,  75, 76, 68)
hist(laguardia, freq=TRUE) # freq histogram
hist(laguardia, breaks=30) # hard-set number of brackets
hist(laguardia, freq=FALSE) # density histogram

data(mtcars) # a build-in data set
attach(mtcars) # so I can use all variables inside matcars
summary(mpg) # mpg variable in mtcars
mean(mpg)
median(mpg)
quantile(mpg, c(.25, .75))
q1 <- quantile(mpg, .25)
q3 <- quantile(mpg, .75)
IQR <- q3 - q1
outlier_cutoff_lower <- q1 - 1.5*IQR
outlier_cutoff_higher <- q3 + 1.5*IQR
mpg[mpg < outlier_cutoff_lower] # select elements in mpg that is lower than the threshold
mpg[mpg > outlier_cutoff_higher] # select elements in mpg that is higher than the threshold

data(iris) # load iris data
?iris # help page for iris
attach(iris)
boxplot(Petal.Width) # Petal width regardless of species
boxplot(Petal.Width ~ Species) # Petal width by species 

sd(Petal.Width) # standard deviation
var(Petal.Width) # variance
sd(Petal.Width)^2 == var(Petal.Width)
(sum(Petal.Width^2)-mean(Petal.Width)^2*length(Petal.Width))/(length(Petal.Width)-1) # alternative definition of variance
