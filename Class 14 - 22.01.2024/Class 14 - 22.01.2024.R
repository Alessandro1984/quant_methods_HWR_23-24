library(ggplot2)
library(stargazer)

df <- data.frame(
  score = c(75, 83, 55, 30, 79, 90, 85, 95, 78, 40, 35, 23, 15, 31, 47, 89, 20,
             83, 91, 17, 10, 15),
  hours = c(4, 5, 3.5, 1.5, 3, 4.5, 5.6, 8, 7.15, 3.15, 3.5, 3.75, 2.15, 2.75, 4, 6.15,
             4.15, 7.5, 5.5, 2.15, 0, 1)
)

#write.csv(df, "C:/Users/bramu/OneDrive/Desktop/df_logit.csv", row.names=FALSE)

linear_reg <- lm(score ~ hours, data = df)

# Plot linear regression
ggplot(df, aes(x = hours, 
               y = score)) + 
  geom_point() +
  geom_smooth(method = lm,
              color = "red",
              se = FALSE) + 
  theme_bw() + 
  labs(color = NULL,
       y = "Score",
       x = "Study hours")

cor(df$score, df$hours)

cor.test(df$score, df$hours)

stargazer(linear_reg, type = "text", keep.stat = c("N", "rsq"))

new_students <- data.frame(hours = c(5, 6))

(pred <- predict(linear_reg, new_students)) # interval = "prediction"

# Logit
df$passed <- ifelse(df$score >= 50, 1, 0)

# Plot linear regression
ggplot(df, aes(x = hours, 
               y = passed)) + 
  geom_point() +
  geom_smooth(method = lm,
              color = "red",
              se = FALSE) + 
  stat_smooth(method = "glm", 
              color = "blue", 
              se = FALSE, 
              method.args = list(family = binomial)) +
  theme_bw() + 
  labs(color = NULL,
       y = "Probability of passing the exam",
       x = "Study hours")

linear_prob <- lm(passed ~ hours, data = df)

logit_reg <- glm(passed ~ hours, data = df, family = binomial(link = "logit"))

stargazer(linear_prob, logit_reg, type = "text")

new_students_prob <- data.frame(hours = c(1, 8))

(pred_linear_prob <- predict(linear_prob, new_students_prob))

(pred_logit_prob <- predict(logit_reg, new_students_prob, type="response"))

beta_hat_zero_logit <- unname(logit_reg$coefficients[1])
beta_hat_one_logit <- unname(logit_reg$coefficients[2])

(pred_1 <- 1 / (1 + exp(1)^-(beta_hat_zero_logit + beta_hat_one_logit * 8)))
