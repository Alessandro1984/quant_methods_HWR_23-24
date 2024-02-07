library(stargazer)
library(wooldridge)

# Test Mc question nr. 5
mean(wage1$educ * wage1$exper) - mean(wage1$educ)*mean(wage1$exper)

cov(wage1$educ, wage1$exper)

# Mc question 8
x <- c(18,5,6,11,12,16,8,9)
median(x)

# Regressions Part II 
reg1 <- lm(wage ~ educ, data = wage1)

reg2 <- lm(wage ~ educ + female + married + married:female, data = wage1)

stargazer(reg1, reg2, type = "text", keep.stat = c("N", "rsq"))

predictions <- data.frame(educ = c(10, 10),
                          female = c(0, 1),
                          married = c(1, 1))

predict(reg2, predictions)

3.354446 - 6.552236 

reg3 <- lm(log(wage) ~ educ + exper + tenure, data = wage1)

stargazer(reg3, type = "text", digits = 5, keep.stat = c("N", "rsq"))

pt(0.00412/0.00172, df = 522, lower.tail = FALSE) * 2
pt(0.02207/0.00309, df = 522, lower.tail = FALSE) * 2

# Compare results with output of the summary function
# Results may different slighlty due to rounding
summary(reg3)
  
