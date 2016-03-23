## This function will cache an inverse of a matrix and print it.

## This particular function cache the inverse of the matix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y) {
    x<<-y;
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(inversem) m<<- inversem
  getmatrix<-function() m
  list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}


## This particular function displays the inverse of the matix 

cacheSolve <- function(x, ...) {
  m<-x$getmatrix()
  if(!is.null(m))
  {
    message("getting cache data of inversed matrix...")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m       ## Return a matrix that is the inverse of 'x'
}
