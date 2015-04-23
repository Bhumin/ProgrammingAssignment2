## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix())
{
        mInverse <- NULL
        set <- function(y)
        {
                x <<- y
                mInverse <<- NULL
        }
        get <- function()
        {
                x
        }
        setInverse <- function(solve) mInverse <<- solve
        getInverse <- function() mInverse
        list(set = set, get = get, setInverse = setInverse, getInverse =  getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        mInverse <- x$getIverse()
        if(!is.null(mInverse))
        {
                message("getting cached data")
                return(mInverse)
        }
        data <- x$get()
        mInverse <- solve(data,...)
        x$setInverse(mInverse)
        mInverse
}
