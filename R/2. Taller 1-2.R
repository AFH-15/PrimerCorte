#'Package installation and basic use of Tidyverse package
#'
#'Prints the prime numbers from 1 to 100, each on a separator line
#'
#' @param nycflights13 Libreria donde se encuentra la base de datos a manipular
#' @param tidyverse Libreria

#'
#' @returns returns integer values

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

library(nycflights13)
library(tidyverse)

#5.2.4 *************************************************************************
# Item 2________________________________________________________________________

P1<-flights
P1<-flights%>%
  filter(arr_delay>=2                     #Pto 1, ud. hora
         ,dest=="HOU"|dest=="IAH"         #Pto 2,
         ,carrier %in% c("UA","DL","AA")  #Pto 3,*
         ,month>=7&month<=9               #Pto 4,
         ,dep_delay<=0,arr_time>=120      #Pto 5, ud. minutos
         ,dep_time>=60,air_time>=30       #Pto 6, ud. minutos *
         ,hour>=0, hour<=6)               #Pto 7,


#2 ______________________________________________________________________________
# Between() es una función que permite detectar valores en
# un rango especifico, se puede usar en el punto 4 7

P2<-flights
P2<-flights%>%
  filter(arr_delay>=2                 #Pto 1, ud. hora
         ,dest=="HOU"|dest=="IAH"     #Pto 2
         ,carrier=="UA"|carrier=="DL" #Pto 3 **
         ,between(month,7,9)          #Pto 4
         ,dep_delay<=0,arr_time>=120  #Pto 5 ud. minutos
         ,dep_time>=60,air_time>=30   #Pto 6 ud. minutos
         ,between(hour,0,6))          #Pto 7


#5.4.1 *************************************************************************
# Item 2: ______________________________________________________________________

#puntoTres<-flights%>%
#  select(day,day,day,day)
#si se incluye el nombre de la variable varias veces en select
#solo selecciona  una vez la variable

# Item 3 _______________________________________________________________________
#any_of() se utiliza para eliminar variables de un vector
#vars<-c("year", "month", "day", "dep_delay", "arr_delay")
#puntoCuatro<-vars%>% #??
#  select(any_of("day"))

# Item 4 _______________________________________________________________________

library(nycflights13)
library(tidyverse)

select(flights, contains("TIME"))
#> ¿Te sorprende el resultado de ejecutar el siguiente código?
#> Lo sorprendente de la funcion "contains" es que tiene la posibilidad de interpretar los datos ingresados
#> independientemente de si son con letras mayusculas o minusculas, en este caso particular selecciona
#> todas las columnas que contengan la palabra "time" asi se ingrese con letras mayusculas

#> ¿Cómo tratan los ayudantes selectos el caso de forma predeterminada?
#> programando de manera que todas las variables se nombren con letrasn minusculas y evitando combinaciones

#>¿Cómo se puede cambiar ese valor predeterminado?
#>Para poder corregir este valor predeterminado se puede agregar una condicion a la sentencia ingresada
#>ignore.case = FALSE. de esta manera solo mostrara los valores que cumplan las dos condiciones

select(flights, contains("TIME", ignore.case = FALSE))
