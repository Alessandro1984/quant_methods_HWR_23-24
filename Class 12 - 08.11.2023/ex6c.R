# 6c)

sigma_hat <- 21.45
n <- 9
mean_sq <- mean(x)^2
SST_x <- 6688.889

std_err_b0 <- sigma_hat / sqrt(n) * sqrt(1 + mean_sq / (1/n * SST_x))
std_err_b0

std_err_b1 <- sigma_hat / sqrt(n) * 1/sqrt((1/n * SST_x))
std_err_b1
