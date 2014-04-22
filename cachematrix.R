## this function tries to speed the calculation of matrix inverse by cache
## for any to be calculated matrix
## the function first makes a judgement that whether the inverse has been calculated
## if so the previously calculated inverse will be returned
## otherwise it does the caculation

## this function creates a matrix

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
