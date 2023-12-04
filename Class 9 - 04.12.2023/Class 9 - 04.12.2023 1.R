library(wooldridge)
library(stargazer)

reg1 <- lm(wage ~ educ, data = wage1)
reg2 <- lm(wage ~ educ + female, data = wage1)
reg3 <- lm(wage ~ educ + female:educ, data = wage1)

stargazer(reg1, reg2, reg3,
          type = "text", 
          keep.stat = c("N", "rsq", "adj.rsq"))