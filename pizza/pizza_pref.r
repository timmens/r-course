library(tidyverse)
pizza_names <-c(
    "Margherita",
    "Salami",
    "Funghi",
    "Prosciutto",
    "Spinaci",
    "Tonno",
    "Vegetaria"
    )


pref <- readr::read_csv("pizza/pizza_preferences.csv")

n <- nrow(pref)
num_pizza <- length(pizza_names)
X <- pref[, -1]

count_fun <- function(X, k, num_pizza) {
  sum(colSums(X == k) * num_pizza:1)
}

count_fun_internal <- function(k) {
  count_fun(X=X, k=k, num_pizza=num_pizza)
}


optimal_sol <- sapply(1:k, count_fun_internal)

optimal_df <- tibble(optimal_sol)
optimal_df <- cbind(optimal_df, pizza_names)



ggplot(optimal_df,
       aes(x = pizza_names,
           y = optimal_sol,
           fill = pizza_names)) +
  geom_bar(stat = "identity") +
  scale_fill_brewer(palette = "Spectral") +
  xlab("") +
  ylab("") +
  geom_text(
    aes(label = pizza_names),
    angle = 45,
    nudge_y = -10,
    size = 8
  ) +
  theme(
    axis.title.x = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    legend.position = "none"
  )
