# Function to find factors of a given number
find_factors <- function(n) {
  factors <- c()
  for (i in 1:n) {
    if (n %% i == 0) {
      factors <- c(factors, i)
    }
  }
  return(factors)
}

# Find factors of a given number
number <- 100 # You can change this value
factors_of_number <- find_factors(number)
print(factors_of_number)