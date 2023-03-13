
install.packages("tidyverse")
library(tidyverse)

-------------------------------
  
#define data series
  
x <- Income_by_quintiles_for_R$Period
y1 <- Income_by_quintiles_for_R$`Quintile 1`
y2 <- Income_by_quintiles_for_R$`Quintile 2`
y3 <- Income_by_quintiles_for_R$`Quintile 3`
y4 <- Income_by_quintiles_for_R$`Quintile 4`
y5 <- Income_by_quintiles_for_R$`Quintile 5`

-------------------------------

#plot line graph

ggplot(Income_by_quintiles_for_R, aes(x, y1, color = "Quintile 1")) +
  geom_line() +
  geom_line(aes(x, y2, color = "Quintile 2")) +
  geom_line(aes(x, y3, color = "Quintile 3")) +
  geom_line(aes(x, y4, color = "Quintile 4")) +
  geom_line(aes(x, y5, color = "Quintile 5")) +
  ggtitle("Line Graph with Legend") +
  labs(x="Year")+
  labs(y="CPI (2005=100)")+
  theme_light() +
  theme(text=element_text(family="Times New Roman", 
                          face="bold", size=12))+
  theme(axis.title.x = element_text(size = 16,face="bold"), 
        axis.title.y = element_text(size = 16,face="bold"))
  guides(color = guide_legend(override.aes = list(linetype =1)))+
  guides(color = guide_legend(title = "Income Groups"))

-------------------------------

glimpse(Income_by_quintiles_for_R)
summary(Income_by_quintiles_for_R)
