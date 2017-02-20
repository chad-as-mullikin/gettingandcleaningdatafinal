source("run_analysis.R")
activities <- sort( unique( uberset$activity ) )
ids <- sort( unique( uberset$subjectid ) )
#n<-c("activity", "subjectid", names(uberset[,4:ncol(uberset)]))
vals <- data.frame()

for( activity in activities ) {
        for( id in ids ){
                current_chunk <- uberset[uberset$activity==activity & uberset$subjectid == id,4:ncol(uberset)]
                r <- lapply( current_chunk, mean )
                if( ncol(vals) == 0 ){
                        vals <- data.frame(c( activity=activity, subjectid=id, r ))
                }
                else{
                        r_df<- data.frame( c(activity=activity,subjectid=id,r ) )
                        vals <- rbind(vals, r_df )
                }
        }
}
names(vals) <- gsub( "\\.", "_", names(vals) )
rm(current_chunk)
rm(r_df)
rm(r)
rm(activities)
rm(activity)
rm(ids)
rm(id)