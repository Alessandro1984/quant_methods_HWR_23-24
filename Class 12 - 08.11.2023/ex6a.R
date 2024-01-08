# 6a)

x <- c(20, 40, 80, 90, 70, 20, 60, 70, 100)

# Mean of x
mean(x) 

y <- c(10, 50, 100, 110, 120, 60, 80, 130, 150)

# Mean of y
mean(y)

SST_x <- sum((x-mean(x))^2)
SST_x
  
reg <- lm(y~x)

summary(reg)

R_sq <- summary(reg)[[8]] 
R_sq

r <- sqrt(R_sq)
r

cor(x,y)
