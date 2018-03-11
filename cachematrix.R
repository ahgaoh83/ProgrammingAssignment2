## Two functions that cache the inverse of a matric

# The function, right below creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
vect <- NULL
set<-function(y){
       x<<-y
       vect<<-NULL
        }
 get<-function() x
 setresult<-function(result) vect<<-result
 getresult<-function() vect
 list(set=set, get=get, setresult=setresult, getresult=getresult)
 }


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
# Return a matrix that is the inverse of 'x'
vect<-x$getresult() 
        
if(!is.null(vect)){
        message("getting cached matrix")
       return(result)
}
   
dat<-x$get()
vect<-solve(dat,...)
x$setresult(vect)  
vect
}

