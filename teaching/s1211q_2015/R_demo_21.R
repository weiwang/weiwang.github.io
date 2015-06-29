data(women)
?women
head(women)

model1 <- lm(weight ~ height, data=women)

fitted(model1)
residuals(model1)
coefficients(model1)

summary(model1)

plot(model1) ## diagnostics of assumptions in linear regression
