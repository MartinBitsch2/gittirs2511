library(lubridate)
library(ggplot2)
library(dplyr)

bornholm <-read.csv ("C:\\Users\\marti\\Documents\\Git\\EK\\1. sem\\Uge 47 - AWS\\dsb_data(in).csv")
bornholm2023 <- bornholm[1:3089,]


unique(bornholm$Event)

ggplot(data = bornholm2023, mapping = aes(x=Solgte_billetter, y=Måned))+
  geom_bar(stat = "identity", fill = bornholm2023$Måned)+
  show.legend = T


plot(bornholm2023$Belægning.)

ggplot(data=bornholm2023, aes(x=Måned, y=Solgte_billetter))+
  geom_bar(stat = "identity", fill = bornholm2023$Måned)

ggplot(data=bornholm2023, aes(x=Måned, y=(Belægning.)))+
  geom_bar(stat = "identity", fill = bornholm2023$Måned)

bornholmm <- bornholm2023 %>% 
  group_by(Måned)
