# A percentile is a point in a distribution at which or below which a given proportion of data is found. 
# The k-th percentile divides the data in a way that k-percent of the data lie below the percentile
# and (100 - k)-percent lie above the percentile. It is also common to hear about quantiles. 
# Quantiles is a more generic terms which indicates values partitioning data in equally spaced groups.
# Specific types of quantiles are percentiles, deciles, quartiles, etc.
x <- c(1,2,3,3,3,4,5,5,6,8,8,9,10,12,12,13,14,15,16,18)

# 4) Find the values existing at the Q_1, Q_2, Q_3 and Q_4, where Q stands for quartile
quantile(x, probs = c(0.25, 0.50, 0.75, 1))

# Do we obtain the same results using the nearest rank method?

# n = P / 100 * N
# n <- ordinal rank
# P <- percentile of interest
# N <- number of values in the set

# 4.1) Find Q_1, Q_2, Q_3 and Q_4
P <- c(0.25, 0.50, 0.75, 1) * 100

N <- length(x)

# Ranks of the values at Q_1, Q_2, Q_3 and Q_4
n <- P / 100 * N
n

# The values at the th percentile
x[n]

# 4.2) the percentile of value 4 and value 15
percentile <- ecdf(x)
plot.ecdf(percentile)
percentile(4)*100
percentile(15)*100

# Homemade ecdf 
plot(x = sort(x), 
     y = (1:length(x))/length(x), 
     type = "s",
     ylim = c(0, 1),
     xlab = "x",
     ylab = "Percentile value",
     xaxt = "n",
     yaxt = "n")
axis(1, at = seq(min(x), max(x), by = 1), las=1)
axis(2, at = seq(0, 1, by = 0.1))

# Let's use again the nearest rank method instead of the in-built ecdf function
# P = n / N * 100
# Let's first find the rank (n) of the value 4 and 15 by looking at the original set
P_new <- c(which(x==4), which(x==15)) / N * 100
P_new

# 4.3) Boxplot
boxplot(x, horizontal = TRUE)

# 5) Find variance and standard deviation
b <- c(2, 5, 3, 1, 6, 3)

# Variance
var(b)

# Standard deviation
sd(b)

# 5.1) Add 10 to data
b_plus_10 <- b + 10

var(b_plus_10)

sd(b_plus_10)

# 5.2) Multiply data by 10
b_times_10 <- b * 10

var(b_times_10)
sd(b_times_10)

# 6) Find covariance and Pearson's correlation coefficient between the variables x and y
x <- c(2, 1, 3)
y <- c(10, 30, 50)

cov(x, y)

cov(x, y) == cov(y, x)

cor(x, y)
