library(stargazer)

# Clean the work space
rm(list = ls())

x <- c(-3, 3, 5) # Variable x
y <- c(5, 6, 2) # Variable y

# Slope coefficient
beta_1 <- cov(y, x) / var(x)

# Intercept
beta_0 <- mean(y) - beta_1 * mean(x)

# We calculate the fitted values
y_hat <- beta_0 + beta_1 * (x)
y_hat

# We calculate the residuals
u_hat <- y - y_hat
u_hat

SST <- sum((y - mean(y))^2)
SST

SSE <- sum((y_hat - mean(y))^2)
SSE

SSR <- sum((y - y_hat)^2)
SSR

SSE + SSR == SST

# Compute the R2
r_squared <- 1 - SSR/SST
r_squared
