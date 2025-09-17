
# Importation des données 

# lien vers les données : 

library(dplyr)
library(tidyverse)

life_expectancy <- read.csv("life_expectancy.csv", sep=",", dec=".")

str(life_expectancy)

summary(life_expectancy)


# Variables de base
# Country :                                                                                                         under study	Country
# year	                                                                                                            Year
# Status of the country's :                                                                                         development	Status
# Population of country	:                                                                                           Population

# Percentage of people finally one year old who were immunized against hepatitis B : 	                              Hepatitis B
# The number of reported measles cases per 1000 people :	                                                          Measles
# Percentage of 1-year-olds immunized against polio	:                                                               Polio
# Percentage of people finally one year old who were immunized against diphtheria	:                                 Diphtheria
# The number of deaths caused by AIDS of the last 4-year-olds who were born alive per 1000 people :	                HIV/AIDS
# The number of infant deaths per 1000 people :	                                                                    infant deaths
# he number of deaths of people under 5 years old per 1000 people	                                                  under-five deaths
# The ratio of government medical-health expenses to total government expenses in percentage :	                    Total expenditure
# Gross domestic product :	                                                                                        GDP
# The average body mass index of the entire population of the country :	                                            BMI
# Prevalence of thinness among people 19 years old in percentage	:                                                 thinness 1-19 years
# Liters of alcohol consumption among people over 15 years old :	                                                  Alcohol
# The number of years that people study	:                                                                           Schooling
# Country life expectancy	Life expectancy :                                                                         [target variable]


# Transformation des variables 


# Vérification du type des variables 
life_expectancy$Country <- as.factor(life_expectancy$Country)

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

str(life_expectancy)

summary(life_expectancy)
