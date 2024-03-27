library(tidyverse)
setwd("C:\\Users\\sakth\\Desktop\\R programming")
library(readxl)
CM_PGNP <- read_excel("CM.PGNP.xlsx", range = "A1:D31")
View(CM_PGNP)

ggplot(data=CM_PGNP)+geom_bar(aes(x=Year,y=CM),stat = 'identity',color="red", fill="skyblue")+
  theme_minimal()+
  labs(title="Child Mortality Rates",
       subtitle = "Bar Chart",
       caption = "Source: NSSO")
