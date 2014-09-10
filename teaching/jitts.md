---
layout: teaching
title:  Wang, Wei's Teaching Page
---
Here is the result of fitting a logistic regression to Republican vote in the 1972 NES.

    R> glm(formula = vote ~ income, family=binomial(link="logit"))
 
                 coef.est coef.se
     (Intercept)    -1.40    0.19
     income          0.33    0.06
     n = 1179, k = 2
     residual deviance = 1556.9, null deviance = 1591.2 (difference = 34.3)

Income is on a 1--5 scale.  Approximately how much more likely is a person in income category 4 to vote Republican, compared to a person in income category 2?  Give an approximate estimate, standard error, and 95\% interval.
