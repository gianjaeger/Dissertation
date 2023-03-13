install.packages("tidyverse")
library(tidyverse)

-------------------------------
  
#define data series

x <- CPI_over_time$Period
y <- CPI_over_time$`CPI (% change)`

data <- data.frame(x, y)

#plotting line graph

ggplot(data, aes(x, y)) + 
  geom_line() +
  theme(panel.grid.minor.y = element_line(color = "gray", size = 0.2, 
                                          linetype = "solid"),
        panel.background = element_rect(fill = "white"),
        axis.line.x = element_line(color = "black", size = 0.2),
        axis.line.y = element_line(color = "black", size = 0.2))+
  theme(text=element_text(family="Times New Roman",face="bold", size=14))+
  labs(x="Year")+
  labs(y="CPI (%)")+
  theme(axis.title.x = element_text(size = 16,face="bold"), 
        axis.title.y = element_text(size = 16,face="bold"))

-------------------------------
  
  summary(CPI_over_time)





  
