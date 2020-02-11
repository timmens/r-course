## Solutions Exercises Sheet 1

res1 <- x * y
res2 <- x + y + z
res3 <- x^(3^2)
res4 <- (x^3)^2

print(res1)
satz <- "Hello World"
satz
myName <- "Florian Schoner"

myName + x

#h)
paste0(myName, x, satz, 8)
paste(myName, x, satz, 8)

paste("11", "mal", "x", "ist", paste0("11", "x"))

#########################################################################
#rm(list=ls())

x <- 42
x <- 1
y <- 5
y <- 4
# y <- 8
y <- 5 + x
pi <- 3
r <- 2
circ <- 2*pi*r
circ


##########################################################################
#exercise 6
x <- 12

#x <- rnorm(100)
#y <- rnorm(100)

#linear_model <- lm(y ~ x)


#load("linear_model.RData")

#linear_model <- readRDS("linear_model.RData")

A <- c("Hallo", "Welt", ",", "wie", "geht", "es", "dir?")
aa <- c("Hallo Welt, wie geht es dir?")
a <- "Hallo Welt, wie geht es dir?"

B <- c(0, 1, 5, 8, 3, 4)

C <- rep(x = 1, times = 100)

D <- 1:213

E <- 31:5
E2 <- seq(from = 31, to = 5, by = -2)
E3 <- seq(from = 31, to = 5, by = 2)

eff <- rep(c(1, 2, 3, 4), times = 10)
eff

eff2 <- rep(c(1, 2, 3, 4), each = 10)

x <- c()
x <- c(D, E, eff)
x
x <- c(x, A)
x

#exercise 7
manyNumbers <- 100:199

manyNumbers[5]
manyNumbers[8]
manyNumbers[13]

manyNumbers[c(5, 8, 13)]

manyNumbers[-5]
manyNumbers[-8]
manyNumbers[-13]

manyNumbers[-c(5, 8, 13)]

rev(manyNumbers)
manyNumbers[length(manyNumbers):1]

manyNumbers[seq(from = 2, to = (length(manyNumbers)),
                by = 2)]

x <- rep(FALSE, 100)
x[5] <- TRUE
x[8] <- TRUE
x[13] <- TRUE
manyNumbers[x]

manyNumbers[rep(x = c(FALSE, TRUE), times = 50)]
manyNumbers[c(FALSE, TRUE)]

manyNumbers[c(FALSE, FALSE, TRUE)]

#exercise 8 
y <- c(7, 5, 4, 102, 100, 5, 9, 1, 3, 88)
length(y)
sum(y)
mean(y)
sd(y)

y>7
sum(y>7)
y[y > 7]

mean(y[y > 4])

sum(y^2)
exp(y)
sin(y)

z <- rep(2, length(y))
y + z
y - z
y * z
y/z

y %*% y
y * y

sort(y)
?sort
sort(y, decreasing = TRUE)


y %*% t(y)

t(y) %*% y


