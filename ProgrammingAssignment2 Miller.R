## R-Programming - Programming Assignment 2: Lexical scoping

##Q1. Create function makeCacheMatrix which creates a matrix object that can cache its inverse

##Created the matrix object and set matrix 
    makeCacheMatrix <- function(x = matrix()) {
        invmat <- NULL
        set <- function(y) {
            x <<- y
            invmat <<- NULL
    }

##Code for getting the matrix, setting and getting the inverse of the matrix
    get <- function()x
    setInverse <- function(inverse)invmat <<- inverse
    getInverse <- function() invmat
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

##Q2. Create function cacheSolve which computes the inverse of the matrix returned by makeCacheMatrix
    cacheSolve <- function(x, ...) {
        invmat <- x$getInverse()
        if(!is.null(invmat)) {
            message("retrieving cached matrix")
            return(invmat)
        }
    matdat <- x$get()
    invmat <- solve(matdat, ...)
    x$setInverse(invmat)
    invmat
} 