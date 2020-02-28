## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
kiran
}
makeVector <- function(x = numeric()) {
	m <- NULL
	set <-function(y) {
		x <<-y
		m <<-NULL
	}
	get <- function() x
	setmean <-function(mean) m <<- mean
	getmean <-function() m
	list(set =set, get = get,
		setmean = setmean,
		getmean = getmean)
}
cachemean <-function(x, ...) {
	m <-x$getmean()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}
	data <-x$get()		
	m <-mean(data, ...)
	x$setmean(m)
	m
}

makeCachematrix <- function(x = matrix()) {
	inv <- NULL
	set <-function(y) {
		x <<-y
		inv <<-NULL
	}
	get <- function() x
	setinverse <-function(inverse) inv <<- inverse
	getinverse <-function() inv
	list(set =set, 
		get = get,
		setinverse = setinverse,
		getinverse = getinverse)
}

## This function computes the inverse of the special "matrix" created by
## makeCacheMatrix above. If the inverse has already been calculated (and the
## matrix has not changed), then it should retrive the inverse from the cache.


cacheSolve <-function(x, ...) {
	## Return a matrix that is the inverse of 'x"

	inv <-x$getinverse()
	if(!is.null(inv)){
		message("getting cached data")
		return(inv)
	}
	mat <-x$get()		
	inv <-solve(mat, ...)
	x$setinverse(inv)
	inv
}

##Testing my function

> source("ProgrammingAssignment2/cachematrix.R")
> my_matrix <-makeCacheMatrix(matrix(1:4, 2,2))
> my_matrix$get()
	  [,1] [,2]
 [1,]	    1    3
 [2,]     2    4

> my_matrix$getinverse()
  NULL
> cacheSolve(my_matrix)
         [,1] [,2]
 [1,]	    -2   1.5
 [2,]      1   -0.5
> cacheSolve(my_matrix)
 getting cache data
        [,1]  [,2]
 [1,]	    -2   1.5
 [2,]     1    -0.5
> my_matrix$getinverse()
         [,1] [,2]
 [1,]	    -2   1.5
 [2,]     1    -0.5
> my_matrix$set(matrix(c(2,2,1,4),2,2))
>my_matrix$get()
         [,1] [,2]
 [1,]	    2    1
 [2,]     2    4
>my_matrix$getinverse()
 NULL
>cacheSolve(my_matrix)
              [,1]       [,2]
 [1,]	   0.6666667  -0.1666667
 [2,]   -0.3333333   0.3333333
>catchSolve(my_matrix)
 getting cache data
>my_matrix$getinverse()
              [,1]       [,2]
 [1,]	   0.6666667  -0.1666667
 [2,]   -0.3333333   0.3333333


