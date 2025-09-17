
# Importation des données 

library(dplyr)
library(tidyverse)

life_expectancy <- read.csv("life_expectancy.csv", sep=",", dec=".")

str(life_expectancy)

summary(life_expectancy)

# Vérification du type des variables 
life_expectancy$Country <- as.factor(life_expectancy$Country)

life_expectancy %>% mutate(
  "Pays" = "Country",
  "Annees" = "Year",
  "Status" = "Status"         
  
)
