## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function is used to memorize the matrix
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setcache <- function(cache) m <<- cache
    getcache <- function() m
    list(set = set, get = get,setcache = setcache,getcache = getcache)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m <- x$getcache()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setcache(m)
    m
        ## Return a matrix that is the inverse of 'x'
}
