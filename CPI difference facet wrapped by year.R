

#facet wrapping 

ggplot(CPIdifference, aes(x= Quintile, y=Values)) + 
  geom_boxplot()+
  theme_bw()+
  labs(y="")+
  theme_light() +
  theme(text=element_text(family="Times New Roman", 
                          face="bold", size=12))+
  theme(axis.title.x = element_text(size = 16,face="bold"), 
        axis.title.y = element_text(size = 16,face="bold"))+
  xlab("")+
  facet_wrap(~Year)

#run regression for each year, consider putting them in dotplot format instead 