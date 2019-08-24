##This function will compute the inverse of the matrix
cacheinverse<-function(x,...){
	inv<-x$getinverse()
	if(!is.null(inv)){			##It will check to see if the inverse has already been calculated
		message('getting cached data')
		return(inv)
	}
	data<-x$get()
	inv<-solve(data,...)			##I use solve() to get the inverse of the matrix
	x$setinverse(inv)
	inv			##The output
}
