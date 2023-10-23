# Simple function
power_fun <- function(x, y) {
  x^y
}

power_fun <- function(x, y) {
  pow <- x^y
  return(pow)
}

power_fun <- function(x, y) {
  pow <- x^y
  return(pow)
  pow <- 0
}

power_fun <- function(x, y) {
  pow <- x^y
  pow <- 0
  return(pow)
}

a <- 1:10

a^2

# Histogram with normal curve
# https://r-charts.com/distribution/histogram-curves/
x <- rnorm(n = 10000, mean = 0, sd = 1)
x2 <- seq(min(x), max(x), length = 100)
fun <- dnorm(x2, mean = mean(x), sd = sd(x))
hist(x,
     prob = TRUE, 
     breaks = 100,
     ylim = c(0, max(fun)),
     xlim = c(-4, 4))
lines(x2, fun, col = 2, lwd = 2)

length(seq(from = 1, to = 10, by = 0.1))

min(rnorm(n = 100, mean = 0, sd = 10))
max(rnorm(n = 100, mean = 0, sd = 10))

# Logical operators
# https://www.statmethods.net/management/operators.html
100 >= 100

99 > 100

2 + 2 == 4

99 != 100

!(1==1) 

(1==1) | (2==3) 

(1==1) & (2==3)

x <- 10
y <- 2

if (x <= y) {
  
  print("x is smaller or equal y")
  
} else {
  
  print("x is larger than y")
  
}
