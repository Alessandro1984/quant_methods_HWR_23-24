polyroot(c(30, 13, 1))

quad_fun <- function(x) {x^2 + x*13 + 30}

curve(quad_fun, from = -20, to = 20)
abline(v=0)            
abline(h=0)