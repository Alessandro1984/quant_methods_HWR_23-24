library(readr)
library(ggplot2)
library(stargazer)

df_logit <- read_csv("df_logit.csv")

# Plot linear regression
ggplot(df_logit, aes(x = hours,
                     y = score)) +
  geom_point() + 
  geom_smooth(method = lm,
              color = "red",
              se = FALSE) +
  labs(color = NULL,
       y = "Score",
       x = "Study hours") +
  theme_bw()

cor(df_logit$score, df_logit$hours)

cor.test(df_logit$score, df_logit$hours)

linear_reg <- lm(score ~ hours, data = df_logit)

stargazer(linear_reg, type = "text", keep.stat = c("N", "rsq"))

# Logit
df_logit$passed <- ifelse(df_logit$score >= 50, 1, 0)

# Plot linear probability and logit
ggplot(df_logit, aes(x = hours,
                     y = passed)) + 
  labs(color = NULL,
       y = "Probability of passing the exam",
       x = "Study hours") +
  geom_smooth(method = lm, 
              color = "red",
              se = FALSE) + 
  geom_smooth(method = glm, 
              color = "blue",
              se = FALSE,
              method.args = list(family = binomial)) + 
  geom_point() +
  theme_bw()

linear_prob <- lm(passed ~ hours, data = df_logit)
logit_reg <- glm(passed ~ hours, data = df_logit, 
                 family = binomial(link = "logit"))

stargazer(linear_prob, logit_reg, type = "text")

new_predictions <- data.frame(hours = c(1, 6, 8))

pred_linear_prob <- predict(linear_prob, new_predictions)
pred_linear_prob

pred_logit_prob <- predict(logit_reg, new_predictions, type = "response")
pred_logit_prob



