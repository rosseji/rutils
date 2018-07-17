

library(dplyr)
library(purrr)
library(RcppRoll)


naive_forecast <- function(x, n) {
  vals <- RcppRoll::roll_mean(x, n)
  c(rep(NA, n), head(vals, length(vals) - 1))
}


vals <- roll_mean(x, n)
c(rep(NA, n), head(vals, length(vals) - 1))

tibble(x = c(2,2,4,4, 2, 2,2,2)) %>%
  mutate(y = naive_forecast(!!sym("x"), 3))

RcppRoll::roll_sum
?roll_sum

x <-  c(2,2,4,4, 2, 2,2,2)
n <- 3


vals <- roll_sum(x, n)[-length(x)]
vals
c(rep(NA, n), vals)
