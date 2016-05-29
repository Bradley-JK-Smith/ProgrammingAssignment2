source('cacheMatrix.R')


m <- rbind(c(9,13,5,2), c(1,11,7,6), c(3,7,4,1), c(6,0,7,10))

y <- makeCacheMatrix(m)

cacheSolve(y)
cacheSolve(y)
cacheSolve(y)

m <- rbind(c(-2,4,7,31),c(6,9,12,6), c(12,11,0,1), c(9,10,2,3))

y <- makeCacheMatrix(m)

cacheSolve(y)
cacheSolve(y)
cacheSolve(y)

m <- rbind(c(1,2),c(3,0))

y <- makeCacheMatrix(m)

cacheSolve(y)
cacheSolve(y)
cacheSolve(y)
