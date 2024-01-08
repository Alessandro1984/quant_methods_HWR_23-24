# 5b)

library(wooldridge)

reg <- lm(log(wage) ~ educ, data = wage1)

SSR <- sum((reg$residuals)^2)
SSR

SSE <- sum((reg$fitted.values - mean(log(wage1$wage)))^2)
SSE

SST <- SSR + SSE
SST

R_squared <- 1 - SSR/SST
R_squared

summary(reg)[8]