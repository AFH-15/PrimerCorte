#'Prime Number Program
#'
#'Prints the prime numbers from 1 to 100, each on a separator line
#'
#' @param Impresion
#' @param ControlImpresion
#'
#'
#' @returns returns integer values
#'
#' [1] 1
#' [1] 2
#' [1] 3
#' [1] ...
#' [1] 89
#' [1] 97

Impresion<-F
modulo<-0
controlImpresion<-T

for(numeros in 3:100){
  for(denominador in 2:100){
    modulo<-numeros%%denominador
    if(modulo!=0){
      impresion<-T
    }
    else{
      impresion<-F
      break
    }
    if(denominador==(numeros-1)){
      break
    }
  }
  if(controlImpresion==T){
    print(1)
    print(2)
    controlImpresion<-F
  }
  if(impresion==T){
    print(numeros)
  }
}

