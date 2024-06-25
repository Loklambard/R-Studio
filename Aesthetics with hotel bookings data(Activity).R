# Step 1: Import your data
hotel_bookings <- read.csv("D:/Intro to R/Datasets and other jazz/hotel_bookings.csv")
library(ggplot2)

# Step 2: Refresh Your Memory
head(hotel_bookings)
colnames(hotel_bookings)

# Step 3: Making a Bar Chart
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel))

# Step 4: Diving deeper into bar charts
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill=deposit_type))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill=market_segment))

# Step 5: Facets galore
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment)