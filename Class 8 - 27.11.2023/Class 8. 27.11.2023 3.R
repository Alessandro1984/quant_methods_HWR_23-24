library(wooldridge)
library(stargazer)

reg1 <- lm(wage ~ educ, data = wage1)

reg2 <- lm(wage ~ educ + exper, data = wage1)

wage1$noise <- rnorm(nrow(wage1), mean = 0, sd = 1)

reg3 <- lm(wage ~ educ + noise, data = wage1)

reg4 <- lm(wage ~ educ + exper + female, data = wage1)

reg5 <- lm(wage ~ educ + exper + female + married, data = wage1)

stargazer(reg1, reg2, reg4, reg5,
          type = "text", 
          keep.stat = c("N", "rsq", "adj.rsq"))