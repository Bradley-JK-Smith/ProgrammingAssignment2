source('cachemean.R')

x <- 1:23

y <- makeVector(x)

cachemean(y)
cachemean(y)
cachemean(y)

x <- c(0.2, 0.7, 0.23, 1.2, 5.6, 0.3)

y <- makeVector(x)

cachemean(y)
cachemean(y)
cachemean(y)
