# Donnees manquantes 

# quantité na global 
sum (is.na (life_expectancy)) 

# % NA global
100* (sum (is.na (life_expectancy)) / sum(!is.na(life_expectancy)))    

# % na par variable 
colSums(is.na(life_expectancy))



library(ggplot2)

ggplot(
  data.frame(
    variable = names(life_expectancy),
    missing  = colSums(is.na(life_expectancy))
  ),
  aes(x = reorder(variable, -missing), y = missing)
) +
  geom_col(fill = "steelblue") +
  coord_flip() +  # optional: horizontal bars
  labs(
    x = "Variable",
    y = "Number of Missing Values",
    title = "Missing Values per Column in life_expectancy"
  ) +
  theme_minimal()




# Liens entre variable ayant des données manquantes 

