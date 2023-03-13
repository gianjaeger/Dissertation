
#load packages

library(ggplot2)

#define dataset (here with data since 2015)

longtermdistribution <- pivot_longer(Quintile_distribution_over_long, c(3:7), 
                     names_to = "Quintile", values_to = "Values")

#boxplot over time 1

ggplot(data = longtermdistribution, aes(as.factor(Year), y = Values))+
  geom_boxplot()+
  #design 
  ggtitle("CPI by disposable income (2015-2022)") +
  labs(x="Year")+
  labs(y="CPI (2015=100)")+
  theme_light() +
  theme(text=element_text(family="Times New Roman", 
                          face="bold", size=16))+
  theme(axis.title.x = element_text(size = 16,face="bold"), 
        axis.title.y = element_text(size = 16,face="bold"))

#extracting data from boxplot 

summary<-boxplot(longtermdistribution)$stats
colnames(Summary)<-c(Year,Values)
rownames(Summary)<-c("Min","First Quartile","Median","Third Quartile","Maximum")



