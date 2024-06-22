# Step 1: Load packages
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

library(tidyverse)
library(skimr)
library(janitor)

# Step 2: Import data
bookings_df <- read_csv("D:/Intro to R/Datasets and other jazz/hotel_bookings.csv")

# Step 3: Getting to know your data
spec(bookings_df)
head(bookings_df)
str(bookings_df)
glimpse(bookings_df)
colnames(bookings_df)

# Step 4: Cleaning your data
trimmed_df <- bookings_df %>% 
  select(hotel, is_canceled, lead_time)

trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename(hotel_type = hotel)

example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

# Step 5: Another way of doing things
example_df <- bookings_df %>%
  mutate(guests = adults + children + babies)

head(example_df)

example_df <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))

head(example_df)



