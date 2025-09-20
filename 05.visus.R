# Visualisations 

library(ggplot2)

# Espérance de vie en fonction du nombre d'habitant 
life_expectancy %>% 
  group_by(pays) %>% 
  ggplot() +
  aes(x = habitant, y = edv, col=statut) +
  geom_point() 
 # les pays développés ont moins d'habitant et une espérance de vie + élevée


# EDV par an selon le statut de développement du pays 
life_expectancy %>% 
  group_by(annee) %>% 
  ggplot() +
  aes(x = annee, y = edv, col=statut) +
  geom_point() 

# EDV en fonction du % des dépenses du gouvernement à la santé par statut de développement
life_expectancy %>% 
  ggplot() +
  aes(x = p_depense, y = edv, col = annee) +
  geom_point()  +
  facet_grid(~ statut)


# EDV en fonction d l'IMC et du statut de dev du pays : plusieurs groupes se détachent 
life_expectancy %>% 
  filter(habitant<1*10^9) %>% 
  group_by(pays) %>% 
  ggplot() +
  aes(x = habitant, y = edv, col = a_ecole) +
  geom_point()  

life_expectancy %>% 
  filter(habitant>1*10^9)
             