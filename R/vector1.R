
# Funcion para contar positivos, negativos y ceros

visualizar_numeros <- function() {

  n <- as.integer(readline("Ingrese la cantidad de elementos: "))

  A <- numeric(n)

  for (i in 1:n) {
    A[i] <- as.numeric(readline(
      paste("Ingrese el valor", i, ": ")
    ))
  }

  P <- c()
  N <- c()
  C <- c()

  for (i in 1:length(A)) {

    if (A[i] > 0) {
      P <- c(P, A[i])

    } else if (A[i] < 0) {
      N <- c(N, A[i])

    } else {
      C <- c(C, A[i])
    }
  }

  cat("\nEl vector ingresado es:\n")
  print(A)

  cat("\nCantidad de positivos:", length(P), "\n")
  cat("Valores positivos:\n")
  print(P)

  cat("\nCantidad de negativos:", length(N), "\n")
  cat("Valores negativos:\n")
  print(N)

  cat("\nCantidad de ceros:", length(C), "\n")
  cat("Valores iguales a cero:\n")
  print(C)
}

