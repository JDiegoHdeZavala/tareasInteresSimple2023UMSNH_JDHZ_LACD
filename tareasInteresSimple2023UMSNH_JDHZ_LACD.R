# Función para calcular el término n de una sucesión aritmética
terminoNSucAritmetica <- function(a1, d, n) {
  if (n <= 0) {
    stop("El término n debe ser un número entero positivo.")
  }
  
  xn <- a1 + (n - 1) * d  # Fórmula para el término n de una sucesión aritmética
  return(xn)
}

# Función para calcular la suma al término n de una sucesión aritmética
sumaTerminoNSucAritmetica <- function(a1, d, n) {
  if (n <= 0) {
    stop("El término n debe ser un número entero positivo.")
  }
  
  if (d == 0) {
    sn <- n * a1  # Suma de una sucesión aritmética con diferencia 0
  } else {
    sn <- (n / 2) * (2 * a1 + (n - 1) * d)  # Fórmula para la suma al término n de una sucesión aritmética
  }
  
  return(sn)
}

# Ejemplos de uso
a1 <- 3  # Primer término de la sucesión aritmética
d <- 2   # Diferencia común de la sucesión aritmética
n <- 5   # Término n de la sucesión aritmética

# Calcular el término n de la sucesión aritmética
termino_n <- terminoNSucAritmetica(a1, d, n)
print(paste("El término", n, "de la sucesión aritmética es:", termino_n))

# Calcular la suma al término n de la sucesión aritmética
suma_n <- sumaTerminoNSucAritmetica(a1, d, n)
print(paste("La suma hasta el término", n, "de la sucesión aritmética es:", suma_n))