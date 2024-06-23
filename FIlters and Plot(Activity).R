## Step 1: Import your data
hotel_bookings <- read.csv("D:/Intro to R/Datasets and other jazz/hotel_bookings.csv")
library(ggplot2)
library(tidyverse)

## Step 2: Making many different charts
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)

## Step 3: Filtering
onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="City Hotel" & 
                                  hotel_bookings$market_segment=="Online TA"))
View(onlineta_city_hotels)

onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")
View(onlineta_city_hotels_v2)

ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))

