
library(ggplot2)

#making graph

qNew %>%
  ggplot(aes(x=Period,y=Values))+
  geom_point(aes(color=Quintile, size=0.4, alpha=0.1))+
  geom_smooth(method = "loess", se = TRUE)+
  theme_bw()+
  
  #design
  
  ggtitle("CPI by disposable income (2020-2022)") +
  labs(x="Year")+
  labs(y="CPI (2015=100)")+
  theme_light() +
  theme(text=element_text(family="Times New Roman", 
                          face="bold", size=16))+
  theme(axis.title.x = element_text(size = 16,face="bold"), 
        axis.title.y = element_text(size = 16,face="bold"))