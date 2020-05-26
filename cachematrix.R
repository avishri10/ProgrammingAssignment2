## Caching the inverse of a matrix

##makeMatrix reates a special "matrix"
##It is a list of set the value of the matrix,get the value of the matrix
##set the value of the inverse,get the value of the inverse
makeMatrix <- function(x = matrix()) {
inv <- NULL
        
set <- function(y) {
                
x <<- y
                
inv <<- NULL
        
}
        
get <- function() x
        
setinv<- function(inv) inv <<- inverse        
getinv <- function() inv        
list(set = set, get = get,
             
setinv = setinv,
             
getinv = getinv)

}


## This function calculates the inverse of the special "matrix"

cacheSolve <- function(x, ...) {
         inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
        
        ## Return a matrix that is the inverse of 'x'
}
