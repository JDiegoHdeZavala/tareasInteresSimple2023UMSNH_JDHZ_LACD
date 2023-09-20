pagoNSucesionAritmetica <- function(saldo, meses, incremento) {
  # Cálculo del monto de la mensualidad en el mes 72
  X1 <- saldo  # Pago inicial
  n <- meses  # Número de meses
  d <- incremento  # Incremento mensual
  
  # Utilizamos la fórmula para la suma de una sucesión aritmética
  # S_n = n/2 * (2a + (n-1)d), donde S_n es la suma de los primeros n términos
  mensualidad <- n / 2 * (2 * X1 + (n - 1) * d)
  
  # Dividimos la suma total entre el número de meses para obtener la mensualidad
  mensualidad <- mensualidad / n
  
  return(mensualidad)
}

# Datos proporcionados
saldo <- 25000.00
meses <- 72
incremento <- 50

# Calcular el monto de la mensualidad en el mes 72
monto_mensualidad <- pagoNSucesionAritmetica(saldo, meses, incremento)

cat("El monto de la mensualidad en el mes 72 es: $", round(monto_mensualidad, 2), "\n")