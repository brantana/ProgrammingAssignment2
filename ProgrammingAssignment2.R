#Mark Brantana - Programming Assignment 2
#I approached this by 1. ensuring the original vector example program
#                     2. making the analygous changes from mean to solve
#                     3. testing the program to ensure it works properly

makeCacheMatrix <- function(x = numeric()) { #Changed function name to "makeCacheMatrix"
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(inv) m <<- inv     #Find/Replaced all "mean" to "inv" via a text editor (both functions)
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}
cacheSolve <- function(x, ...) {                #Changed function name to "cacheSolve"
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)                   #Utilized solve (analygous to mean)
        x$setinv(m)
        m
}


m1 <- matrix(c(1/2, -1/4, -1, 3/4), nrow = 2, ncol = 2)
m1
solve(m1)
myMatrix_object <- makeCacheMatrix(m1)
cacheSolve(myMatrix_object)


