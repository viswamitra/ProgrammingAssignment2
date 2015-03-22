## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## takes a matrix, and 
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse


makeCacheMatrix <- function(x = matrix()) {	
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    
    get <- function() {
        y
    }
    
    setinverse <- function(inverse) {
        m <<- inverse
    }
    
    getinverse <- function() {
        m 
    }
    
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## takes the matrix created from the previous function, and checks if the matrix already has an
## inverse. If it has an inverse, it is returned. If not, it is calculated and then set to the inverse
## and then it is returned.

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$getinverse()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
