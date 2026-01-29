# install palmerpenguins package
# open 'penguins' dataset
# save penguins with bill length > 40 in to a new object
# calculate the average body mass

# install.packages("palmerpenguins")
library('palmerpenguins')
library('tidyverse')
# big_bill = penguins[penguins$bill_length_mm > 40,]
# mean(big_bill)
# big_bill = penguins %>% 
#   filter(bill_length_mm > 40) %>% 
# 
# big_bill$body_mass_g %>% 
# Broken ^^
mean(big_bill$bill_length_mm, na.rm = TRUE)
# Alternatively
penguins %>% 
  filter(bill_length_mm > 40) %>% 
  pluck("body_mass_g") %>%
  mean()
view(penguins)
# calculate body mass by sex
penguins %>% 
  filter(sex == "male") %>% 
  pluck("body_mass_g") %>% 
  mean()

penguins %>% 
  filter(sex == "female") %>% 
  pluck("body_mass_g") %>% 
  mean()
#calculate body mass of sex for penguins whose bill length > 40
penguins %>% 
  filter(sex == "male") %>% 
  filter(bill_length_mm > 40) %>% 
  pluck("body_mass_g") %>% 
  mean()

penguins %>% 
  filter(sex == "female") %>% 
  filter(bill_length_mm > 40) %>% 
  pluck("body_mass_g") %>% 
  mean()

# Alternative way to sort by categorical
penguins %>% 
  filter(bill_length_mm > 40) %>% 
  group_by(sex, island) %>% 
  summarize(avg_body_mass = mean(body_mass_g), number_of_penguins = n())
