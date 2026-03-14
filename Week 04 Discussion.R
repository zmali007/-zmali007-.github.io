library("palmerpenguins")
library(tidyr)
library(dplyr)
 #library("tidyverse") DOES NOT WORK FOR ME SO I USED library(forcats)
library(forcats)
penguins <- penguins %>% drop_na()

#Q1
str(penguins)
class(penguins$sex)

#Q2
levels(penguins$species)

#Q3
species_chr <- as.character(penguins$species)
class(species_chr)
as.numeric(penguins$species)
as.numeric(species_chr)

#Q4
penguins <- penguins %>%
  mutate(species = fct_relevel(species, "Gentoo", "Chinstrap", "Adelie"))
levels(penguins$species)

#Q5
penguins <- penguins %>%
  mutate(species_reordered = fct_reorder(species, body_mass_g, .fun = median))
levels(penguins$species_reordered)
levels(penguins$species)

penguins <- penguins %>%
  mutate(species_reordered2= fct_reorder(species, flipper_length_mm, .fun = median))
levels(penguins$species_reordered2)

#Q6
#I'll treat myself with some sleep and peace of mind playing games
#be thankful for what I have 
#donate money to charitable causes. and i make prayer to those in troubing times


