## R Programming Assignment 2 - Lexical Scoping
## This assignment is broke into two parts
## The first part is a function named makeCacheMatrix
## This function creates the matrix which will store the inverse 
## The second part is a function named cacheSolve
## This function computes the inverse which will be stored in the 
## first function

## This function creates a matrix which is used to store the inverse 
## of the matrix which was created using the cacheSolve function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) m <<- solve
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}



## This function checks to see if a cached value is stored  
## of the matrix inverse. If not, it calculates the inverse
## using solve.

cacheSolve <- function(x=matrix(), ...) {
        m <- x$getmatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        matrix <- x$get()
        m <- solve(matrix, ...)
        x$setmatrix(m)
        m
}
