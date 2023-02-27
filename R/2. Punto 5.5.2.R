# 5.5.2.
# Item 1:
# Actualmente dep_timey sched_dep_time son convenientes a la vista, pero difíciles
# de calcular porque en realidad no son números continuos. Conviértalos a una representación más
# conveniente de la cantidad de minutos desde la medianoche.

library(nycflights13)
library(tidyverse)
flights_times <- mutate(flights, dep_time_mins = (
  dep_time %/% 100*60 + dep_time %% 100) %% 1440, sched_dep_time_mins = (
    sched_dep_time %% 100 * 60 + sched_dep_time %% 100) %% 1440)

select(flights_times, dep_time, dep_time_mins, sched_dep_time, sched_dep_time_mins)

#_________________________________________________________________________________________________

# Item 2
# Comparar air_time con arr_time - dep_time. Que esperas ver?
# ¿Que ves? ¿Qué necesitas hacer para arreglarlo?

library(nycflights13)
library(tidyverse)
#> Comparacion
flights_airtime <- mutate(flights,
                          dep_time = (dep_time %/% 100 * 60 + dep_time %% 100) %% 1440,
                          arr_time = (arr_time %/% 100 * 60 + arr_time %% 100) %% 1440,
                          air_time_diff = air_time - arr_time + dep_time)

nrow(filter(flights_airtime, air_time_diff != 0))

#> Que esperas ver
ggplot(flights_airtime, aes(x = air_time_diff)) + geom_histogram(binwidth = 1)

#> Que hacer para repararlo
ggplot(filter(flights_airtime, dest == "LAX"), aes(x = air_time_diff)) +
  geom_histogram(binwidth = 1)
