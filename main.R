# main.R - An interactive R script to solve quadratic equations

# Function to solve the quadratic equation ax^2 + bx + c = 0
solve_quadratic <- function(a, b, c) {
  # Check for non-numeric or NA inputs
  if (!is.numeric(a) || !is.numeric(b) || !is.numeric(c) || is.na(a) || is.na(b) || is.na(c)) {
    return("Error: All coefficients must be valid numbers.")
  }

  # Check if 'a' is zero
  if (a == 0) {
    return("Error: 'a' cannot be zero for a quadratic equation.")
  }

  discriminant <- (b^2) - (4 * a * c)

  if (discriminant > 0) {
    # Two real and distinct roots
    root1 <- (-b + sqrt(discriminant)) / (2 * a)
    root2 <- (-b - sqrt(discriminant)) / (2 * a)
    return(paste("Two real roots: ", round(root1, 4), " and ", round(root2, 4)))
  } else if (discriminant == 0) {
    # One real root
    root1 <- -b / (2 * a)
    return(paste("One real root: ", round(root1, 4)))
  } else {
    # Two complex roots
    real_part <- -b / (2 * a)
    imaginary_part <- sqrt(-discriminant) / (2 * a)
    root1 <- complex(real = real_part, imaginary = imaginary_part)
    root2 <- complex(real = real_part, imaginary = -imaginary_part)
    return(paste("Two complex roots: ", round(root1, 4), " and ", round(root2, 4)))
  }
}

# --- Interactive Part ---
cat("Quadratic Equation Solver: ax^2 + bx + c = 0\n")
cat("-------------------------------------------\n")

# Prompt user for input
cat("Enter the coefficient a: ")
a <- as.numeric(readLines("stdin", n = 1))

cat("Enter the coefficient b: ")
b <- as.numeric(readLines("stdin", n = 1))

cat("Enter the coefficient c: ")
c <- as.numeric(readLines("stdin", n = 1))

# Get the result from the function
result <- solve_quadratic(a, b, c)

# Print the result
cat("\nResult:\n")
cat(result, "\n")
