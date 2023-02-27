#>5.6.7
#>Haga una lluvia de ideas sobre al menos 5 formas diferentes de evaluar las características
#> típicas de retraso de un grupo de vuelos

#>1. Analisis de los tiempos de mantenimiento de los aviones para garantizar la disponibilidad

#>2. Sincronizar los tiempos de carrier para la salida a plataforma

#>3.Garantizar que el taxeo se sincronice con el rodaje a pista para tener disponilidad de rampa

#>4. Es muy comun la demora o retraso de un vuelo cuando se encuentran FOD en pista (son materiales
#o piezas desprendidas) que podrian ocasionar un accidente.
#Incluir un tiempo de limpieza de pista y almacenar los tiempos para tener una trazabilidad de estos tiempos

#> ¿Qué es más importante: el retraso en la llegada o el retraso en la salida?
#>
#> Se debe considerar desde que posicion se contempla, para la aerolinea es mas beneficioso un retraso
#> en la llegada ya que da tiempo a trabajo en pista para planeacion de despegue de otras rutas evitando
#> la congestion de flota, pero para un pasajero puede representar mayores problemas y costos una llegada tarde,
#> esto porque se puede alterar cronogramas de viaje y posibles sobre costos.

library(nycflights13)
library(tidyverse)

select(flights, contains("TIME", ignore.case = FALSE))
