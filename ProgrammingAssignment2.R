#
#==Parts 1 & 2 - Set the value of the vector and get the value of the vector.
makeVector<-function(x=numeric()){
        m<-NULL
        set<-function(y){
                x<<-y
                m<<-NULL
        }
        get<-function()x
        setmean<-function (mean)m<<-mean
        list(set=set,get=get,
             setmean=setmean,
             getmean=getmean)
}
#==Part 3 & 4 - Set the value of the mean and get the value of the mean.
cachemean<-function(X){
        m<-x$getmean()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data<-x$get()
        m<-mean(solve(X))
        x$setmean(m)
        m
}