## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
##define set function
set<-function(y)
{
  x<<-y
  m<<-NULL
}
##define get function
get<-function()x
#setinverse
setinverse<-function(inverse) 
{
  m<<-inverse
}
##get inverse
getinverse<-function() m
list(set=set,get=get,setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function
##checks if there is a cached value to inverse matrix, else calculates inverse by itself
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
