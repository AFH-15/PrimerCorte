#> 5.3.1
#>
#> Item1
#> ¿ Cómo podría utilizar arrange()para ordenar todos los valores que faltan al principio?
#> (Sugerencia: use is.na()).

library(nycflights13)
library(tidyverse)
arrange(flights,desc(is.na(dep_time)),dep_time)

#> Item2
#> Ordenar flights para encontrar los vuelos más retrasados. Encuentra los vuelos que salieron antes.

library(nycflights13)
library(tidyverse)

arrange(flights,desc(dep_delay))
arrange(flights,dep_delay)

#>Item 3
#>Ordenar flights para encontrar los vuelos más rápidos (velocidad más alta).

library(nycflights13)
library(tidyverse)
head(arrange(flights,desc(distance/air_time)))


#>item 4
#>¿Qué vuelos viajaron más lejos? ¿Cuál viajó menos?

library(nycflights13)
library(tidyverse)

#>vuelos que viajaron mas lejos
arrange(flights, desc(distance))

#> cual viajo menos
arrange(flights,distance)
