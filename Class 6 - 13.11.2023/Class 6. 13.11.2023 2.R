data_w3 <- wage1[ wage1$female==1, 1:4]
data_w3

data_w3_cor <- cor(data_w3)

corrplot(data_w3_cor, 
         method = "number", 
         type = "upper")