library(ggplot2)
library(palmerpenguins)

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Body Mass vs Flipper length",subtitle = "Sample of 3 Penguin Species",
       caption="Data Collected by Dr. Kristen Gorman")+
  annotate("text",x=215,y=3500,label="The Gentoos are the Largest",color="red",fontface="bold",size=5,angle=20)

p <- ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Body Mass vs Flipper length",subtitle = "Sample of 3 Penguin Species",
       caption="Data Collected by Dr. Kristen Gorman")+
  annotate("text",x=215,y=3500,label="The Gentoos are the Largest",color="red",fontface="bold",size=5,angle=20)

