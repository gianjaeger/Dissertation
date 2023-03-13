
#load packages

library(ggplot2)

#define dataset 

qNew <- pivot_longer(Quintiles_with_general_year, c(3:7), 
                     names_to = "Quintile", values_to = "Values")

#boxplot over time 1

ggplot(data = qNew, aes(as.factor(Year), y = Values))+
  geom_boxplot()+
  #design 
  ggtitle("CPI by disposable income (2020-2022)") +
  labs(x="Year")+
  labs(y="CPI (2015=100)")+
  theme_light() +
  theme(text=element_text(family="Times New Roman", 
                          face="bold", size=16))+
  theme(axis.title.x = element_text(size = 16,face="bold"), 
        axis.title.y = element_text(size = 16,face="bold"))


#extracting data from boxplot 

Summary<-boxplot(qNew)$stats
colnames(Summary)<-c("year","quintile","values")
rownames(Summary)<-c("Min","First Quartile","Median","Third Quartile","Maximum")
Summary










