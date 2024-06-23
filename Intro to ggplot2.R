# Step 1: Import your data 
hotel_bookings <- read_csv("D:/Intro to R/Datasets and other jazz/hotel_bookings.csv")

# Step 2: Import libraries
library(tidyverse)
library(ggplot2)

# Step 3: Begin creating a plot
head(hotel_bookings)

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))