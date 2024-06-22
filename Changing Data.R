# Step 1: Load packages
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

library(tidyverse)
library(skimr)
library(janitor)

# Step 2: Import data
hotel_bookings <- read_csv("D:/Intro to R/Datasets and other jazz/hotel_bookings.csv")

# Step 3: Getting to know your data
head(hotel_bookings)
str(hotel_bookings)
glimpse(hotel_bookings)
colnames(hotel_bookings)

arrange(hotel_bookings, lead_time)#Asc
arrange(hotel_bookings, desc(lead_time))#Desc

head(hotel_bookings)

hotel_bookings_v2 <-
  arrange(hotel_bookings, desc(lead_time))
head(hotel_bookings_v2)

max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)

mean(hotel_bookings$lead_time)
mean(hotel_bookings_v2$lead_time)

hotel_bookings_city <- 
  filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")
head(hotel_bookings_city)
mean(hotel_bookings_city$lead_time)

hotel_summary <- 
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))
head(hotel_summary)















