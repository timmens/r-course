# Exercises Day 2

#Exercise 1

helloWorld <- function(){
  print("Hello World")
}

helloWorld()

#Exercise 2

addition <- function(x,y){
  if(length(x)==1 & length(y)==1){
    return(x+y)
  }
  else{
    stop()
  }
}

#Exercise 3a

sequence_function <- function(n){
  if(n>0 & n%%1==0){
    return(1:n)
  }
  else{
    stop()
  }
}

#Exercise 3b

sum_function <- function(n){
  if(n>0 & n%%1==0){
    value <- 0
    for(i in 1:n){
      value <- value +i
    }
    return(value)
  }
  else{
    stop()
  }
}

#Exercise 3c

sumofsquares_function <- function(n){
  if(n>0 & n%%1==0){
    value <- 0
    for(i in 1:n){
      value <- value + i**2
    }
    return(value)
  }
  else{
    stop()
  }
}


#Exercise 4a

recursive_faculty <- function(n){
  if(n>=0 & n%%1==0){
    if(n==0){
      return(1)
    }
    else{
      return(n*recursive_faculty(n-1))
    }
    
  }
  else{
    stop()
  }
}

#Exercise 4b

forloop_faculty <- function(n){
  if(n>=0 & n%%1==0){
    if(n==0){
      return(1)
    }
    else{
      value <- 1
      for(i in 1:n){
        value <- value*i
      }
      return(value)
    }
  }
  else{
    stop()
  }
}

#Exercise 5

A <- matrix(data = 1:16, ncol = 4, nrow = 4, byrow = TRUE)
B <- matrix(data = c(1,1,1,2,2,2), nrow = 3, ncol = 2)
C <- matrix(data = c(11:13,21:23), nrow = 2, ncol = 3, byrow = TRUE)

#Exercise 5a

A[,2]
B[,2]
C[,2]

#Exercise 5b

A[1,]
B[1,]
C[1,]

#Exercise 5c

A[2,2]
B[2,2]
C[2,2]

#Exercise 6a

v <- seq(from = 2, to = 33.5, by = 2.1)
M <- matrix(data = v, nrow = 4, ncol= 4)

#Exercise 6b

M[2,] <- 42

#Exercise 6c

M <- M*M

#Exercise 6d

M%*%M

#Exercise 6e

x <- 1:4
M*x
M%*%x

#Exercise 6f

determinate <- det(M)

#Exercise 6g

v1 <- cbind(v,v,v)
v2 <- rbind(v,v,v,v)

is.matrix(v1)
is.matrix(v2)

dim(v1)
dim(v2)

rbind(M,v2)

View(cbind(M,v2))
