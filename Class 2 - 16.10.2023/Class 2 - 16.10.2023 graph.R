rm(list = ls())

c_a <- 5
a_a <- 5
G <- 10
c_Y <- 0.6
a_Y <- 0.2

intercept <- c_a + a_a + G

slope <- c_Y + a_Y

Y_N <- intercept + slope * 0:200

Y <- 0:200

Y_star <- 1/(1-c_Y-a_Y) * (c_a + a_a + G)

plot(Y, Y_N,  
     type = "l", 
     col = "blue",
     xlim = c(Y_star-10, Y_star+10),
     ylim = c(Y_star-10, Y_star+10))
lines(Y, Y)
points(Y_star, Y_star, pch = 19, col = "blue")

