# Step 1: Load packages
install.packages("tidyverse")
library(tidyverse)

## Step 2: Create data frame
names <- c("Peter", "Jennifer", "Julie", "Alex")
age <- c(15, 19, 21, 25)
people <- data.frame(names, age)

## Step 3: inspect the data frame
head(people)
str(people)
glimpse(people)
colnames(people)
mutate(people, age_in_20 = age + 20)

#Another DF
fruit <- c("Lemon", "Blueberry", "Grapefruit", "Mango", "Strawberry")
rank <- c(4, 2, 5, 3, 1)
fruit_ranks <- data.frame(fruit, rank)
head(fruit_ranks)
str(fruit_ranks)
glimpse(fruit_ranks)
colnames(fruit_ranks)