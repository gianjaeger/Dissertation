

# plotting dots (facet wrapped)

ggplot(qNew, aes(x=quintile_num, y=Values))+
  geom_point()+
  theme_bw()+
  labs(y="differences")+
  theme_light() +
  theme(text=element_text(family="Times New Roman", 
                          face="bold", size=16))+
  theme(axis.title.x = element_text(size = 16,face="bold"), 
        axis.title.y = element_text(size = 16,face="bold"))+
  xlab("")+
  facet_wrap(~Year)+
  geom_smooth(method = "lm")
