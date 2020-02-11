x <- c("name1", "name2", "name3")
y <- c(1, 2, 3)
z <- c("a", "b", "c")

df <- data.frame(names=x, grades=y, whatever=z)
df

iris
head(iris)

str(iris)

iris[1, 1]
iris[1, ]
iris[, 1]

iris$Petal.Length

head(iris[1])
head(iris[c(1, 2)])
head(iris[-1])

df_subset <- iris[c(1, 2)]
head(df_subset)



df[["grades"]]
df["grades"]
df$grades








head(iris)

str(cars)



x <- 1:10
is.vector(x)

x <- data.frame(col1=x)
head(x)
is.vector(x)


is.function(x)

x <- sum
is.function(x)
is.function(sum)







x <- 10
y <- 12

x > y
x < y
x == y
x != y

x <- 1
y <- -2:3

x
y

x > y

any(x > y)
all(x > y)

x > y
!(x > y)

x <- 1:10

x[x < 5]
x[(x < 5) | (x > 8)]
x[(x < 5) & (x > 8)]

x[(x > 2) & (x < 8)]

x
x < 3
which(x < 3)
which(x < 3 | (x > 7 & x < 9))


indices <- which(x < 3 | (x > 7 & x < 9))
x[indices]
x[which(x < 3 | (x > 7 & x < 9))]






x <- 10

if (x < 10) {
  print("x is smaller than 10.")
}

if (x > 10) {
  print("x is bigger than 10.")
}

if (x == 10) {
  print("x is equal to 10.")
}

print("this will get printed")

if (x < 10) {
  print("x is smaller than 10.")
} else {
  print("x is not smaller than 10.")
}



if (x < 10) {
  print("x is smaller than 10.")
}
if (!(x < 10)) {
  print("x is not smaller than 10.")
}

x <- 11
if (x < 10) {
  z <- x
} else if (x > 10) {
  z <- 2 * x
} else {
  z <- 0
}
z



cat("Please choose which type of regression should be run:\n")
x <- readline(prompt="Linear regression (1); Polynomial regression (2): ")
x <- as.integer(x)

if (x == 1) {
  print("Okay lets do linear regression!")
} else if (x == 2) {
  print("Oh no I hate polynomial regression :(")
} else {
  print("There were only two options what did you do?")
}


for (i in 1:10) {
  print(i)
}








# First observation:

# compute covariance matrix for 1st obs..
m1 <- matrix(1:16, 4, 4)

# Second ....
m2 <- matrix(1:1, ...)



matrices <- list()
for (i in 1:10) {
  imatrix <- matrix(1:(i ** 2), nrow=i)
  
  matrices[[i]] <- imatrix
}
matrices[[5]]
matrices[[1]]

matrices


x <- c(10, 20, 30)
my_sum <- 0
for (k in 1:3) {
  my_sum <- my_sum + x[k]
}
my_sum



B <- as.integer(1e8)
x <- runif(B)
y <- runif(B)


mean(x + y > 0.75 & x + y < 1.25)

count <- 0
nsim <- 10000
for (i in 1:nsim) {
  x <- runif(1, min=0, max=1)
  y <- runif(1, min=0, max=1)
  
  z <- x + y
  if (z >= 0.75 && z <= 1.25) {
    count <- count + 1
  }
  
}
count / nsim 


























