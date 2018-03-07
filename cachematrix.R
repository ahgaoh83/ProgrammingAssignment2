## Buiding two functions that cache the inverse of a matri

## The function, right below creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
vect <- NULL
set<-function(y){
       x<<-y
       vect<<-NULL
        }
 get<-function() x
 setresult<-function(spec_matrix) vect<<-spec_matrix
 getresult<-function() m
 list(set=set, get=get, setresult=setresult, getresult=getresult)
 }


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
# Return a matrix that is the inverse of 'x'
vect<-x$getresult() 
        
if(!is.null(vect)){
        message("getting cached data")
}
   
dat<-x$get()
vect<-result(dat,...)
x$setresult(vect)  
vect
}

