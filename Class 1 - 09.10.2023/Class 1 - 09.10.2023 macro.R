c_a <- 5
a_a <- 5
G <- 10
c_Y <- 0.6
a_Y <- 0.2

data <- c(1, -1, -1, -c_Y, 1, 0, -a_Y, 0, 1)

A <- matrix(data, nrow = 3, ncol = 3, byrow = TRUE)

r <- c(G, c_a, a_a)

b <- solve(A) %*% r

b