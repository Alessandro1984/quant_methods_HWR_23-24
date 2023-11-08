rm(list = ls())

# 1) Evaluate the following expression with the summation operator 
k <- 1:4

sum(k^2)

sum(k) + 2*length(k)

3*sum(k)

# 2) Find mean and median
x <- c(3,5,2,6,5,9,5,2,8,5)

mean(x)

sum(x)/length(x)

median(x)

# 3) Find the weighted arithmetic mean

y <- c(70, 90, 85)
w <- c(1, 1, 3)

sum(y*w)/sum(w)

weighted.mean(y, w)
