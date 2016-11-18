## Save the inrevese of matrix in the envirmoment.

## 1, set the value of the matrix
## 2, get the value of the matrix
## 3, set the inrevese of matrix
## 4, get the inrevese of matrix

makeCacheMatrix <- function(x = matrix()) {

  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  
}


## If the inverse of matrix is existed, output it.
## otherwise using solve(data) to count one.
## There should be a condition to judge if there is a matrix and it has a inverse.


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  

  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data)
  x$setsolve(s)
  s
  
}
