## Put comments here that give an overall description of what your
## functions do

## Return a list of functions
makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(y){
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        setinv <- function(inv) inverse <<- inv
        getinv <- function() inverse
        list(set = set, get = get,
                setinv = setinv,
                getinv = getinv)
}


##Return a inverse matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinv()
        if(!is.null(inverse)){
                #getting cache data
                return(inverse)
        }
        data <- x$get()
        inverse <- solve(data,...)
        x$setinv(inverse)
        inverse
}
