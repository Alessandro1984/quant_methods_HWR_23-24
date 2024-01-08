library(wooldridge)

reg <- lm(price ~ sqrft + bdrms, data = hprice1)

summary(reg)

(0.12844 * 140 + 15.19819 * 1) * 1000

prediction_house1 <- (-19.31500 + 0.12844 * 2438 + 15.19819 * 4) * 1000

prediction_house1

price_house1 <- hprice1[1,1] * 1000

price_house1 - prediction_house1

