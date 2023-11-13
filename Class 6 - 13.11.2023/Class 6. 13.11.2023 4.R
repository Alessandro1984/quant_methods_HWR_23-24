library(wooldridge)

wage <- wage1$wage
constant <- rep(10, length(wage))

cov(wage, constant)

cor(wage, constant)

