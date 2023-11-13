library(wooldridge)

wage <- wage1$wage
# wage E(X)
# mean(wage) mu_x

u <- wage - mean(wage)

mean(u)

var(u)

var(wage)
