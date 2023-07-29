## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
      x <<- y
      m <<- NULL
    }
    get <- function() 
      x
    setInverse <- function (inverse) 
      m <<- inverse
    getInverse <- function () 
      m
    list(set = set, get = get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    d <- x$getInverse()
    if(!is.null(d)){
      message("getting cached data")
      return(d)
    }
    mat <- x$get() 
    d <- solve(mat, ...)
    x$setInverse(d)
    d
    }
