

library(ggplot2)
library(ggthemes)
library(scales)
library(dplyr)
library(tidyverse)
install.packages(viridis)
library(viridis)


CPIbyproduct <- pivot_longer(CPIbyproductcategory, c(1:12), 
                               names_to = "productcategory", values_to = "valuesforCPIbyproduct")

view(CPIbyproduct)

productcategory <- CPIbyproduct$productcategory
valuesforCPIbyproduct <- CPIbyproduct$valuesforCPIbyproduct


view(newdatakey)

#Without CPI general (ONE I USED IN THE END)


newdatakey <- data.frame(
  group = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"),
  value = c(20.2, 9.0, 12.6, 33.5, 20.9, 8.0, 21.5, 5.3, 10.9, 10.1, 18.2, 7.3),
  category = c("E = Food and non-alcoholic beverages", "A = Alcoholic beverages and tobacco", "B = Clothing and footwear", 
               "H = Housing, Water, Electricity, Gas and other fuels",
               "F = Furniture, household equipment and maintenance", "G = Health", "L = Transport", "C = Communication",
               "J = Recreation and culture", "D = Education", "K = Restaurants and hotels", 
               "I = Miscellaneous goods and services"))


group_labels <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L")
newdatakey$group <- factor(newdatakey$group, levels = c("B", "C", "H", "J", "A", "E", "F", "D", "L", "I", "K", "G"))

ggplot(newdatakey, aes(x = group, y = value, fill = category)) +
  geom_bar(stat = "identity") +
  scale_x_discrete(labels = group_labels,
                   name = "") +
  labs(y = "% change in CPI (2020-22)", x = NULL,fill = "Category") +
  ggtitle("Bar Chart") +
  scale_fill_viridis(discrete = TRUE, option = "viridis")+
  theme(text = element_text(family = "Times New Roman", size = 18),  
        axis.text = element_text(face = "bold"))
  
#relevant notes / alternatives -----------------------------

ggplot(CPIbyproduct, aes(x = productcategory, y = valuesforCPIbyproduct)) +
  geom_bar(stat = "identity") +
  scale_x_discrete(labels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"),
                   name = "Group") +
  labs(y = "Value", fill = "productcategory") +
  ggtitle("Bar Chart") +
  theme(legend.position = "right")+
  scale_fill_manual(values = c("darkorange", "dodgerblue"),
                    name = "Category",
                    labels = unique(CPIbyproduct$productcategory))


#incorporating legend


ggplot(CPIbyproduct, aes(x = productcategory, y = valuesforCPIbyproduct)) +
  geom_bar(stat = "identity") +
  scale_x_discrete(labels = productcategory,
                   name = "Group") +
  labs(y = "Value", fill = "Category") +
  ggtitle("Bar Chart") +
  scale_fill_manual(valuesforCPIbyproduct = c("red", "blue", "orange", "Green", "purple", "magenta"
                                                   "gray", "light blue", "pink", "yellow"
                                                   "light green", "black", "white", ),
                    labels = unique(data$category)) +
  theme(legend.position = "bottom")

#changing axis labels to vertical 

productcategory <- CPIbyproduct$productcategory
valuesforCPIbyproduct <- CPIbyproduct$valuesforCPIbyproduct

ggplot(CPIbyproduct, aes(x = productcategory, y = valuesforCPIbyproduct)) +
  geom_bar(stat = "identity") +
  labs(y = "Value", fill = "Category") +
  ggtitle("Bar Chart") +
  theme(legend.position = "right")+
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5))

view(reasonallyears)


#create data set 

manualCPIbyproduct <- data.frame(
  group = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"),
  value = c(20.2,	9.0, 12.6,	33.5,	20.9,	8.0,	21.5,	5.3, 10.9,	10.1,	18.2,	7.3, 17.6),
  category = c("Food and non-alcoholic beverages", "Alcoholic beverages and tobacco", "Clothing and footwear", "Housing", "Water", "Electricity", "Gas and other fuels",
               "Furniture household equipment and maintenance", "Health", "Transport", "Communication"
               "Recreation and culture", "Education", "Restaurants and hotels", 
               "Miscellaneous goods and services", "CPI Overall Index"))

#-----------------------------------------------------------

newdatakey <- data.frame(
  group = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"),
  value = c(20.2, 9.0, 12.6, 33.5, 20.9, 8.0, 21.5, 5.3, 10.9, 10.1, 18.2, 7.3, 17.6),
  category = c("Food and non-alcoholic beverages", "Alcoholic beverages and tobacco", "Clothing and footwear", 
               "Housing, Water, Electricity, Gas and other fuels",
               "Furniture, household equipment and maintenance", "Health", "Transport", "Communication",
               "Recreation and culture", "Education", "Restaurants and hotels", 
               "Miscellaneous goods and services", "General change in CPI"))


group_labels <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M")
newdatakey$group <- factor(newdatakey$group, levels = c("B", "C", "H", "M", "J", "A", "E", "F", "D", "L", "I", "K", "G"))

ggplot(newdatakey, aes(x = group, y = value, fill = category)) +
  geom_bar(stat = "identity") +
  scale_x_discrete(labels = group_labels,
                   name = "") +
  labs(y = "% change in CPI (2020-22)", x = NULL,fill = "Category") +
  ggtitle("Bar Chart") +
  scale_fill_viridis(discrete = TRUE, option = "viridis")+
  theme(text = element_text(family = "Times New Roman", size = 18),  
        axis.text = element_text(face = "bold"))


install.packages("viridis")
library(viridis)




