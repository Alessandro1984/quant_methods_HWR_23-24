quad_fun <- function(x) {-7*x^2 + 126*x - 23}

lin_fun <- function(x) {-14*x + 126}

curve(quad_fun, from = -10, to = 20)
lines(-10:20, lin_fun(-10:20))
abline(v=0)            
abline(h=0)



