

install.packages("ggplot2")
install.packages("ggthemes")
install.packages("scales")
install.packages("dplyr")
install.packages("tidyverse")


library(ggplot2)
library(ggthemes)
library(scales)
library(dplyr)
library(tidyverse)

#-----------------------------------------------------------

#manipulating data - turning rows into colummns 

reasonallyears <- pivot_longer(Inflation_by_quintile_and_category_all_years_, c(2:13), 
                            names_to = "productcategory", values_to = "valuesreason")

view(reasonallyears)

#saving data -----------------------------------------------

reasonquintiles <- reasonallyears$Quintileallyears
valuesreason2 <- reasonallyears$valuesreason
productcategory2 <- reasonallyears$productcategory

# Create the stacked bar chart using ggplot2 ---------------

ggplot(reasondata2, aes(x = reasonquintiles, y = valuesreason2, fill = productcategory2)) +
  geom_bar(stat = "identity") +
  ggtitle("Stacked Bar Chart (2020-23)")+
  labs(x = "", y = "", fill = "Variable") +
  scale_fill_viridis(discrete = TRUE, option = "viridis")+
  theme(text = element_text(family = "Times New Roman", size = 18),  
        axis.text = element_text(face = "bold"))


install.packages("viridis")
library(viridis)