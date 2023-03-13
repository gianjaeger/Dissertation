


#without facewrap (across all three years)

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
  geom_smooth(method = "lm")

#obtaining slope of geom_smooth line

# Fit the linear regression model separately
model <- lm(values ~ quintile_num, data = qNew)

# Extract the slope (coefficient) for the variable wt
coef(model)["quintile_num"]

#THE SLOPE OF THE LINE OF BEST FIT GIVEN BY GEOM_SMOOTH IS THE SAME AS WHAT WE
#GET WHEN DOING THE LINEAR REGRESSION!!