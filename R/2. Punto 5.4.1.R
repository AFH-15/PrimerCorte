#5.4.1
# Item 2: ______________________________________________________________________
# Si se incluye el nombre de la variable varias veces en select
# solo selecciona  una vez la variable

library(nycflights13)
library(tidyverse)

puntoTres<-flights%>%
select(day,day,day,day)


# Item 3 _______________________________________________________________________
#any_of() se utiliza para eliminar variables de un vector
#vars<-c("year", "month", "day", "dep_delay", "arr_delay")
#puntoCuatro<-vars%>% #??
#  select(any_of("day"))

# Item 4 _______________________________________________________________________
#> ¿Te sorprende el resultado de ejecutar el siguiente código?
#> Lo sorprendente de la funcion "contains" es que tiene la posibilidad de interpretar los datos ingresados
#> independientemente de si son con letras mayusculas o minusculas, en este caso particular selecciona
#> todas las columnas que contengan la palabra "time" asi se ingrese con letras mayusculas

#> ¿Cómo tratan los ayudantes selectos el caso de forma predeterminada?
#> programando de manera que todas las variables se nombren con letrasn minusculas y evitando combinaciones

#>¿Cómo se puede cambiar ese valor predeterminado?
#>Para poder corregir este valor predeterminado se puede agregar una condicion a la sentencia ingresada
#>ignore.case = FALSE. de esta manera solo mostrara los valores que cumplan las dos condiciones

library(nycflights13)
library(tidyverse)

select(flights, contains("TIME"))
select(flights, contains("TIME", ignore.case = FALSE))
