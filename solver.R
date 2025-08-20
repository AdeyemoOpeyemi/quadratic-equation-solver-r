# R script to calculate the roots of a quadratic equation

# Function to solve the quadratic equation
solve_quadratic <- function() {
  # Get user input for coefficients
  if (interactive()) {
    a <- as.numeric(readline(prompt = "Enter the coefficient a: "))
    b <- as.numeric(readline(prompt = "Enter the coefficient b: "))
    c <- as.numeric(readline(prompt = "Enter the coefficient c: "))
  } else {
    f <- file("stdin")
    open(f)
    cat("Enter the coefficient a: ")
    a <- as.numeric(readLines(f, n = 1))
    cat("Enter the coefficient b: ")
    b <- as.numeric(readLines(f, n = 1))
    cat("Enter the coefficient c: ")
    c <- as.numeric(readLines(f, n = 1))
    close(f)
  }

  # Calculate the discriminant
  discriminant <- (b^2) - (4 * a * c)

  # Check the value of the discriminant
  if (discriminant > 0) {
    # Two real and distinct roots
    root1 <- (-b + sqrt(discriminant)) / (2 * a)
    root2 <- (-b - sqrt(discriminant)) / (2 * a)
    cat("The roots are real and distinct.\n")
    cat("Root 1:", root1, "\n")
    cat("Root 2:", root2, "\n")
  } else if (discriminant == 0) {
    # One real root
    root1 <- -b / (2 * a)
    cat("The roots are real and equal.\n")
    cat("Root:", root1, "\n")
  } else {
    # Complex roots
    real_part <- -b / (2 * a)
    imaginary_part <- sqrt(-discriminant) / (2 * a)
    cat("The roots are complex.\n")
    cat("Root 1:", real_part, "+", imaginary_part, "i\n")
    cat("Root 2:", real_part, "-", imaginary_part, "i\n")
  }
}

# Run the solver
solve_quadratic()
