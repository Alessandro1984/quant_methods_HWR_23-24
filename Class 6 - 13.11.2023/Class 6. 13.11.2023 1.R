library(corrplot)
library(wooldridge)

#View(wage1)

data_w <- wage1[wage1$female==1, 1:4]

#cov(data_w)

data_w_cor <- cor(data_w)

#corrplot(data_w_cor)

corrplot(data_w_cor, 
         method = "number", 
         type = "upper")

var(wage1$wage)

