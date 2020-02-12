

x <- 0
while (x < 10) {
  x <- x + 1
  print(x)
}

boolean_statment <- some_function(some_inputs)

while (boolean_statment) {
  do_some_stuff(...)
  
  update_boolean_statment(...)
}


dat <- read.table("data/mtcars.txt", header = TRUE, sep = "")
head(dat)


dat_csv <- read.csv("~/sciebo/R_Course/r-course-1920/data/mtcars.csv")
head(dat_csv)



write.csv(dat, "~/sciebo/R_Course/r-course-1920/data/newmtcarsdf.csv")



userinput <- NULL
while(is.null(userinput)) {
  input <- readline("Type in a number between 0 and 10. \n")
  input <- as.integer(input)
  
  if (is.numeric(input)) {
    if (input >= 0 && input <= 10) {
      userinput <- input
    }
  }
}
userinput

getwd()






Y <- c(100, 200, 300, 400, 500, 600, 700)
X <- c(40, 50, 50, 70, 65, 65, 80)
plot(X, Y)


plot(X, Y, main = "Relationship between fertilizer and crop yield", sub = "Figure 1",
     xlab = "Fertilizer in kilogram", ylab = "Crop yield in USD",
     pch = 22, col = "red")


plot(X, Y, type = "l", lwd = 3, lty = 6,
     ylim = c(0, 1000), xlim = c(30, 90))

plot(X, Y, type = "l", lwd = 3,
     ylim = c(0, 1000), xlim = c(30, 90))






x <- rnorm(1000)
x
hist(x)

y <- runif(1000)
hist(y)


xx <- rnorm(1000, mean=2, sd=0.1)
hist(xx)


normal_sample <- rnorm(500, mean = 0, sd = 1)
hist(normal_sample, freq = FALSE, xlim = c(-4, 4), ylim = c(0, 0.5))
curve(dnorm(x, mean = 0, sd = 1), col ="red", add = TRUE)
abline(0, 0.5, col="blue")


par(mfrow = c(2, 2))
normal_sample <- rnorm(500, mean = 0, sd = 1)
hist(normal_sample, freq = FALSE)
hist(normal_sample, freq = FALSE, xlim = c(-4, 4), ylim = c(0, 0.5))


par(mfrow=c(1, 1))


























