#caching a matrix

makeCacheMatrix<-function(x=matrix()){
        #intializing inv as NULL
        inv<-NULL
        #define set function to assign a new value y 
        set<-function(y){
                x<<-y
                inv<<-NULL
                
        }
        #get function gets the value of matrix
        get<-function() (x)
        
        #define setinverse function to set the value of inverse matrix
        setinverse<-function(inverse) (inv <<- inverse)
        #getinverse gets the value of inverse matrix
        getinverse<-function() (inv)
        #get the list of the functions above
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}