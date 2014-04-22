## this function tries to speed the calculation of matrix inverse by cache
## for any to be calculated matrix
## the function first makes a judgement that whether the inverse has been calculated
## if so the previously calculated inverse will be returned
## otherwise it does the caculation

## this function creates a special matrix

makeCacheMatrix <- function(x = matrix()) {
 inv<-NULL
 set<-function(y){
   x<<-y
   inv<<-NULL
 }
 get<-function() x
 setinverse<-function(inverse)inv<<-inverse
 getinverse<-function() inv
 list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## this function first make a judgement about the matrix inverse
## if it's previously calculated then return the cached inverse
## else do the calculation and store the matrix invserse

cacheSolve <- function(x, ...) {
  inv<- x$getinverse()
  if (!is.null(inv)){
    message ("getting cached inverse")
    return(inv)
  }
  m<-x$get()
  inv<-solve(m)
  x$setinverse(inv)
  inv
}
