#  5.7.1
#  item 2
#  ¿Qué avión ( tailnum) tiene el peor récord de puntualidad?

library(nycflights13)
library(tidyverse)

flights %>%
  filter(!is.na(arr_delay)) %>%
  group_by(tailnum)%>%
  summarise(arr_delay = mean(arr_delay), n = n()) %>%
  filter(n >= 20) %>%
  filter(min_rank(desc(arr_delay)) == 1)
