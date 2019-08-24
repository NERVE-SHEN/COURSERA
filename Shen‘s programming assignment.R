
##The function has almost the same idea as makeMean 

##So i think my codes do not need to make a big change 

##cause this assignment assumes that the matrix supplied is always invertible

##i can skip the step of adding an if else structure to judge whether the input matrix is invertible

makeMatrix<-function(x=matrix()){           ##define the argument x as a matrix     

	inv<-NULL			    ##initialize inv with NULL

	set<-function(y){		    ##The function will assign valueassign a value to x

		x<<-y			    ##in an environment that is different from the current environment

		inv<<-NULL

	}

	get<-function()x

	setinverse<-function(inverse)inv<<-inverse

	getinverse<-function()inv

	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)	##The output will be used in the next function

}


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