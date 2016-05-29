## These 2 functions work together to create a matrix object that can
## calculate and cache the inverse of a matrix
##
## 1. makeCacheMatrix:
##      Creates a special "matrix" object with the functions required
##
## 2. cacheSolve:
##      Computes the inverse of the special "matrix" returned by
##      'makeCacheMatrix'.
##
## NOTE: There is no check on the matrix provided. This is assumed to be
##       square invertible.

## For example,
##   m <- rbind(c(1,2),c(3,0))
##   y <- makeCacheMatrix(m)
##   cacheSolve(y)
##   cacheSolve(y)
##   cacheSolve(y)

makeCacheMatrix <- function(x = matrix()) {
        
        ## Creates a "matrix" object which is a list containing functions to:
        ## 1. set the value of the matrix 'x'
        ## 2. get the value of the matrix 'x'
        ## 3. set the value of the inverse matrix
        ## 4. get the value of the inverse matrixthat can invert a matrix

        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) inv <<- solve
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse, 
             getinverse = getinverse)
}


cacheSolve <- function(x, ...) {

        ## This function returns the inverse of the matrix
        ## that was created with the makeCacheMatrix function.
        ## The input 'x' is the list of functions created by 'makeCacheMatrix'
        ## The first check is to see if the inverse matrix has already
        ## been calculate. If so, it uses the 'get' function to retrieve this.
        ## Otherwise, it calculates the inverse using the 'solve' function
        ## and caches the value using the 'setinverse' function.
        
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data,...)
        x$setinverse(inv)
        inv
}
