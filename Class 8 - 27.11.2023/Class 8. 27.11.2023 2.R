library(wooldridge)

rm(list = ls())

reg <- lm(wage ~ educ, data = wage1)

y <- wage1$wage

y_hat <- reg$fitted.values

u_hat <- reg$residuals

SST <- sum((y - mean(y))^2)

SSE <- sum((y_hat - mean(y))^2)

SSR <- sum((y - y_hat)^2)

r_squared <- 1 - SSR/SST
r_squared

adj_r_square <- 1 - (SSR * (1 / (nrow(wage1) - 2))) / (SST * (1 / (nrow(wage1) - 1)))
adj_r_square

stargazer(reg, type = "text",
          keep.stat = c("N", "rsq", "adj.rsq"))
