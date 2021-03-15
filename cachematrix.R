## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
		i <- NULL
		set <- function(y) {
                x <<- y
                i <<- NULL ## Set the value of the inverse to null at first
       	}
		get <- function() x ## To find the matrix
        	setinverse <- function(solve) i <<- solve ## To set the inverse
        	getinverse <- function() i	## To get the result of the inverse
        	list(set = set, get = get,	## To list the actions
             	setinverse = setinverse,
             	getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
		i <- x$getinverse() #	#To retrieve the inverse
        	if(!is.null(i)) { 	##To check whether there is already a result
                message("getting cached data")
                return(i) 	##If there is a result, then return the result
        	}
        	data <- x$get()##To get the matrix
        	i <- solve(data, ...) 	##To find the inverse of the matrix
        	x$setinverse(i) ##To set the inverse value
        	i 	
        ## Return a matrix that is the inverse of 'x'
}
