library(wooldridge)
library(dplyr)

data_w2 <- wage1 %>% 
  filter(female == 1) %>% 
  select(1:4)