## normal data
norm_data = rnorm(100)
qqnorm(norm_data)

## t data: heavy tail
t_data = rt(100, df =5)
qqnorm(t_data)

## gamma data: skewed
gamma_data = rgamma(100, shape=2, rate=1)
qqnorm(gamma_data)



## 2-sample t-test
t.test(1:10, y = c(7:20))      # P = .00001855
t.test(1:10, y = c(7:20, 200)) # P = .1245    -- NOT significant anymore
     
## Classical example: Student's sleep data
plot(extra ~ group, data = sleep)
## Traditional interface
attach(sleep)
t.test(extra[group == 1], extra[group == 2])
detach(sleep)
## Formula interface
t.test(extra ~ group, data = sleep)
