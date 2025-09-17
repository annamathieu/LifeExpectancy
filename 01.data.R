
# Importation des données 
library(dplyr)
library(tidyverse)

life_expectancy <- read.csv("life_expectancy.csv", sep=",", dec=".")

str(life_expectancy)

summary(life_expectancy)

