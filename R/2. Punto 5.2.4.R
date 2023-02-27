#'Punto 5.2.4
#'
#'
#' Print the corresponding matrix, depending on the filters of the exercises.
#' Between() is a function that allows you to detect values in a
#' specific range a specific range.
#'
#'
#' @param P1 variable to store the database for manipulation
#' @param P2 variable to store the database for manipulation
#'
#'
#' @returns Returns the filtered values of each point
#' @examples
#' P1<-flights
#' P1<-flights%>%
#'   filter(arr_delay>=2
#'         ,dest=="HOU"|dest=="IAH")

library(nycflights13)
library(tidyverse)


P1<-flights
P1<-flights%>%
  filter(arr_delay>=2                     #Pto 1, ud. hora
         ,dest=="HOU"|dest=="IAH"         #Pto 2,
         ,carrier %in% c("UA","DL","AA")  #Pto 3,*
         ,month>=7&month<=9               #Pto 4,
         ,dep_delay<=0,arr_time>=120      #Pto 5, ud. minutos
         ,dep_time>=60,air_time>=30       #Pto 6, ud. minutos *
         ,hour>=0, hour<=6)               #Pto 7,


P2<-flights
P2<-flights%>%
  filter(arr_delay>=2                 #Pto 1, ud. hora
         ,dest=="HOU"|dest=="IAH"     #Pto 2
         ,carrier=="UA"|carrier=="DL" #Pto 3 **
         ,between(month,7,9)          #Pto 4
         ,dep_delay<=0,arr_time>=120  #Pto 5 ud. minutos
         ,dep_time>=60,air_time>=30   #Pto 6 ud. minutos
         ,between(hour,0,6))          #Pto 7

