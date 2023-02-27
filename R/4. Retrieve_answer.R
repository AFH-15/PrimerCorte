#'Programa para impresion de resultados
#'
#'Imprime los resultados de la guia de exploración de R
#'para ciencia de datos dependiendo del numero que coloques
#'
#' @param x debe ser un parametro numerico
#' @returns Retorna uno de los resultados de cada punto dela guia
#' @examples
#' Retrieve_answer(2)
#' Retrieve_answer(2) [1] 1


retrieve_answer <- function (x){
  i=0
  if(between(x,1,6)){
    switch (x,
            case = {
              i=1
              print("Punto 5.2.4")},
            case ={
              i=2
              print("Punto 5.3.1")},
            case ={
              i=3
              print("Punto 5.4.1")},
            case ={
              i=4
              print("Punto 5.5.2")},
            case ={
              i=5
              print("Punto 5.6.7")},
            case ={
              i=6
              print("Punto 5.2.4")}
    )
    print("Resultado: ")
    return(i)
  } else {
    return("El numero no se encuentra entre 1 y 6")
  }
}

