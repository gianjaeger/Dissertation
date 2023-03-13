

library(tidyverse)
library(ggplot2)

#define data (rows into collumns, easier for R)

CPIdifference <- pivot_longer(CPI_differences, c(3:7), 
                              names_to = "Quintile", values_to = "Values")

view(CPIdifference)

#create plots - distribution  

ggplot(CPIdifference, aes(x=Quintile, y=Values)) + 
  geom_boxplot(outlier.colour = NA)+
  theme_bw()+
  ggtitle("CPI by disposable income (2020-2022)") +
  labs(y="CPI (2015=100)")+
  theme_light() +
  theme(text=element_text(family="Times New Roman", 
                          face="bold", size=16))+
  theme(axis.title.x = element_text(size = 16,face="bold"), 
        axis.title.y = element_text(size = 16,face="bold"))+
  xlab("")



