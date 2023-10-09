data <- c(7, 5, -3, 3, -5, 2, 5, 3, -7)

A <- matrix(data, nrow = 3, ncol = 3, byrow = TRUE)

# Test
solve(A) %*% A

r <- c(16, -8, 0)

b <- solve(A) %*% r

b