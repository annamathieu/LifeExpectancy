
library(dplyr)
library(tidyverse)

life_expectancy <- read.csv("life_expectancy.csv", sep=",", dec=".")

str(life_expectancy)

summary(life_expectancy)

# Nom des variables
life_expectancy <- life_expectancy %>% rename(
  pays = Country,
  annee = Year,
  statut = Status,
  p_hepatiteb = Hepatitis.B,
  p_polio = Polio,
  p_diphtherie = Diphtheria,
  c_rougeole = Measles,
  d_vih = HIV.AIDS,
  d_bebe = infant.deaths,
  d_enfant = under.five.deaths,
  p_maigreur = thinness..1.19.years,
  p_depense = Total.expenditure,
  pib = GDP,
  imc = BMI,
  alcool = Alcohol,
  a_ecole = Schooling,
  habitant = Population,
  edv = Life.expectancy
)


# Vérification du type des variables 
life_expectancy$pays <- as.factor(life_expectancy$pays)
life_expectancy$statut <- as.factor(life_expectancy$statut)

str(life_expectancy)

summary(life_expectancy)


library(ggplot2)

p <- life_expectancy %>% 
  ggplot(aes(x=  annee, y = GDP)) 

p
