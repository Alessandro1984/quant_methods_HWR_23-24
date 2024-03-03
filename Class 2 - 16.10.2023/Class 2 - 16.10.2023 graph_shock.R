rm(list = ls())

c_a <- 5
a_a <- 5
G <- 10
c_Y <- 0.6
a_Y <- 0.2
shock <- 1

intercept <- c_a + a_a + G

slope <- c_Y + a_Y

Y_N <- intercept + slope * 0:200
Y_N2 <- (intercept + shock) + slope * 0:200

Y <- 0:200

Y_star <- 1/(1-c_Y-a_Y) * (c_a + a_a + G)
Y_star2 <- 1/(1-c_Y-a_Y) * (c_a + a_a + G + shock)

plot(Y, Y_N,  
     type = "l", 
     col = "blue",
     xlim = c(Y_star-10, Y_star+10),
     ylim = c(Y_star-10, Y_star+10))
lines(Y, Y)
lines(Y, Y_N2, col = "red")
points(Y_star, Y_star, pch = 19, col = "blue")
points(Y_star2, Y_star2, pch = 19, col = "red")




