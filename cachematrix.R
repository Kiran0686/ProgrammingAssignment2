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
	i <- NULL
	set <-function(y) {
		x <<-y
		i <<-NULL
	}
	get <- function() x
	setinverse <-function(inverse) m <<- inverse
	getinverse <-function() i
	list(set =set, 
		get = get,
		setinverse = setinverse,
		getinverse = getinverse)
}
cacheSolve <-function(x, ...) {
	m <-x$getinverse()
	if(!is.null(i)){
		message("getting cached data")
		return(i)
	}
	data <-x$get()		
	m <-solve(data, ...)
	x$setinverse(i)
	m
}

