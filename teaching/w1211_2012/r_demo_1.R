install.packages("ggplot2")
library(ggplot2)
data(diamonds) # build-in data set diamonds

?diamonds # documentation of this data set
diamonds # the data set is a matrix, with columns being variables and row being observations
dim(diamonds)
head(diamonds)

diamonds$carat # access one variable
plot(diamonds$carat, diamonds$diamonds$price) # the relationship between weight and price
p1 <- ggplot(diamonds, aes(carat, price)) + geom_point() + facet_grid(.~cut) # one plot for each cut
p1

p2 <- ggplot(diamonds, aes(carat, price)) + geom_point() + facet_grid(clarity ~ cut) # one plot for each cut and clarity combination
p2

p3 <- ggplot(diamonds, aes(carat, price)) + stat_smooth(method="lm") + facet_grid(clarity ~ cut) # fit a regression model for each cut and clarity combination
p3
