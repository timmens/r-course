#Exercise 1
#a)
X <- matrix(c(5, 6, 0, 6, 0, 5, 8, 9, 8), 3, 3)
b <- c(3, 5, 7)

det(X)
Y <- solve(X) %*% b
Y

#b)
solve(X, b)

#c)
apply(X, MARGIN = 2, FUN = mean)
colMeans(X)

#d)
apply(X, MARGIN = 2, FUN = sd)


#e)
sorted <- apply(X, MARGIN = 1, FUN = sort, decreasing = TRUE)
sorted
t(sorted)


#Exercise 2

i <- 0
j <- 1

while(i < 1){
  
  x <- rnorm(100)
  y <- rnorm(100)
  
  res_lm <- lm(y ~ x)
  #without constant: lm(y ~ x -1)
  t <- res_lm$coefficients[2] / sqrt(diag(vcov(res_lm)))[2]
  
  if(abs(t) > qnorm(0.975)){
    i <- 1
  }
  print(j)
  j <- j + 1
}

#Exercise 3
library(carData)
#a)
Duncan$income[6]
Duncan[6, 2]
Duncan$income

#b)
Duncan$prestige
Duncan[, 4]
Duncan[, "prestige"]

#c)
Duncan[10, ]

#d)
Duncan$income[8:nrow(Duncan)]

#e)
Duncan[c(TRUE, FALSE), ]
Duncan[seq(from = 1, to = nrow(Duncan), by = 2), ]

#Exercise 4
faithful

#a)
mean_std <- function(vec){
  avg <- sum(vec) / length(vec)
  res <- (1 / (length(vec) - 1)) * sum((vec - avg)^2)
  return(list(mean = avg, standard_dev = sqrt(res)))
}
mean_std(faithful$eruptions)


#b)
eruption_times <- faithful$eruptions
hist(eruption_times, prob = TRUE)
lines(density(eruption_times))

#Exercise 5
#getwd() to print your current working directory

setwd("C:/Users/Flori/Documents/r-course/data")
lwahl <- read.csv("Landtagswahl.csv",
                  header = TRUE, row.names = 1)



#a)
row.names(lwahl) <- c("Wahlberechtigte", "ungültige_Stimmen",
                      "Stimmen_für_SPD", "Stimmen_für_CDU",
                      "Stimmen_für_FDP",
                      "Stimmen_für_die_Grünen", 
                      "Stimmen_für_sonstige_Parteien")

colnames(lwahl) <- c("Landtagswahl1996", "Landtagswahl2001")

#c)
voters <- c(sum(lwahl[-1, "Landtagswahl1996"]),
            sum(lwahl[-1, "Landtagswahl2001"]))

eligible <- lwahl[1, ]

turnout <- voters / (eligible * 100)

#d)
barplot(lwahl$Landtagswahl.1996[3:nrow(lwahl)],
        names.arg = c("SPD", "CDU", "FDP", "Grüne", "Sonstige"),
        col = c("red", "black", "yellow", "green", "grey"))
?barplot






















