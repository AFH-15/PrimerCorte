#'Programa para impresion de resultados
#'
#'Imprime los resultados de la guia de exploración de R
#'para ciencia de datos dependiendo del numero que coloques
#'
#' @param x debe ser un parametro numerico
#' @returns Retorna uno de los resultados de cada punto dela guia
#' @examples
#' Retrieve_answer(1)
#' Retrieve_answer(6)


retrieve_answer <- function (x){
  i=0
  if(between(x,1,6)){
    switch (x,
            case = {
              i=1
              print("Punto 5.2.4")
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
                       ,hour>=0, hour<=6)
              print(P1)},


            case ={
              i=2
              print("Punto 5.3.1")
              library(nycflights13)
              library(tidyverse)
              arrange(flights,desc(is.na(dep_time)),dep_time)},


            case ={
              i=3
              print("Punto 5.4.1")
              library(nycflights13)
              library(tidyverse)

              puntoTres<-flights%>%
                select(day,day,day,day)
              print(puntoTres)},


            case ={
              i=4
              print("Punto 5.5.2")
              library(nycflights13)
              library(tidyverse)
              flights_times <- mutate(flights, dep_time_mins = (
                dep_time %/% 100*60 + dep_time %% 100) %% 1440, sched_dep_time_mins = (
                  sched_dep_time %% 100 * 60 + sched_dep_time %% 100) %% 1440)

              select(flights_times, dep_time, dep_time_mins, sched_dep_time, sched_dep_time_mins)
            },


            case ={
              i=5
              print("Punto 5.6.7")},


            case ={
              i=6
              print("Punto 5.2.4")
              library(nycflights13)
              library(tidyverse)

              flights %>%
                filter(!is.na(arr_delay)) %>%
                group_by(tailnum)%>%
                summarise(arr_delay = mean(arr_delay), n = n()) %>%
                filter(n >= 20) %>%
                filter(min_rank(desc(arr_delay)) == 1)}
    )
    print("Resultado: ")
    return(i)
  } else {
    return("El numero no se encuentra entre 1 y 6")
  }
}

