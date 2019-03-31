## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#using function set to set the matrix to m
#using function get to return the matrix
#using function setinv to set the inverse matrix to inverse_matrix
#using function getinv to return the inverse matrix
#return a list of functions


makeCacheMatrix <- function(x = matrix()) {
  
  
  i<- NULL
  
  #use function set to set the matrix to m
  
  set<-function( matrix){
    x<<-matrix
    i<<- NULL
    
  }
  
  #use function get to return the matrix
  
  get<-function() {
    x
  }
  
  #use function setinv to set the inverse matrix to i
  
  setinv<-function(inverse){
    i<<-inverse
  }
  
  #use function getinv to return the inverse matrix
  
  getinv<-function(){
    i
  }
  
  #returning a list of functions
  list(set = set, get = get , setinv = setinv , getinv = getinv)
  
}


## Write a short comment describing this function
#set the inverse to m_inv
#return inverse if set otherwise compute it
#if m_inv is null then calculate the inverse of the matrix
#set the inverse matrix
#return the inverse matrix


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  #set the inverse to m_inv 
  i <-x$getinv()
  
  
  #return inverse if set otherwise compute it
  if(!is.null(i)){
    message("get cache data")
    return(i)
  }
  #if m_inv is null then calculate the inverse of the matrix
  matrix<-x$get()
  #calculatng its inverse
  i<-solve(matrix)
  #set the inverse
  x$setinv(i)
  #return the inverse
  i
  
  
}