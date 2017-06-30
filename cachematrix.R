## CACHE THE INVERS OF A MTRIX


## makeCacheMatrix creates a list containing functions to
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the matrix to its inverse
## 4. gets the inverse value of the matrix

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL

##
  set <- function(y){
    x <<- y
    inv <<- NULL
  }

  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## cacheSolve function checks if the inverse of the matrix is already computed.
## if it is already computed,returns the inverse and skips computation
## if not computed, computed the inverse using solve function and sets the value in cache using setinverse function

cacheSolve <- function(x, ...) {

        ## Return a matrix that is the inverse of 'x'

	inv <- x$getinverse()

        if(!is.null(inv)){

          message("getting inverse data")
          return (inv)

        }
  	data <-x$get()
  	inv <- solve(data)
  	x$setinverse(inv)
  	inv
}
