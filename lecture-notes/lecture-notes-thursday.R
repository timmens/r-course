n <- 500
iq <- rnorm(n, mean=110, sd=25)
income <- 1000 + exp(iq / 50) + rnorm(n, sd=2)

df <- data.frame(iq=iq, income=income)

#library(ggplot2)
ggplot2::ggplot(df, aes(x=iq, y=income)) + 
  geom_point()
ggplot2::ggplot(df, aes(x=iq, y=income)) + 
  geom_smooth()


package_name::function_of_that_package()

library(package_name)
package_name::function_of_that_package()








n <- 100 # number of data points

x1 <- runif(n)
x2 <- rnorm(n)
x3 <- rchisq(n, df=3)
X <- cbind(x1, x2, x3) # covariate matrix

beta <- c(2, 0, -1) # true parameter

eps <- rcauchy(n) # error terms

y <- X %*% beta + eps # simulated outcomes


linear_model <- lm(y ~ X)
summary(linear_model)


df <- data.frame(
  income=y, age=x1, edu=x2, nationality=x3
  )


linear_model <- lm(income ~ age + edu + I(edu**2), data=df)
summary(linear_model)



install.packages("broom")
library("broom")

broom::tidy(linear_model)

linear_model["estimate"]



broom::tidy(linear_model)["estimate"]



library(neuralnet)

neuralnet::neuralnet(income ~ age + edu, data=df)



linear_model
summary(linear_model)


install.packages("stargazer")
library("stargazer")

stargazer(linear_model, type="latex")





























