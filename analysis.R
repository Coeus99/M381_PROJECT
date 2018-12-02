#R analysis for M381 Project, Team 6

#get data
recursive.df<-read.csv( "./recursive/data.csv" )
dynamic.df<-read.csv( "./dynamic/data.csv" )
iterative.df<-read.csv( "./iterative/data.csv" )

#Mark each data frame with the algorithm type
recursive.df$alg="rec"
dynamic.df$alg="dyn"
iterative.df$alg="it"

#Let's choose 3 n values to analyze
n1.recursive.df<-subset( recursive.df, n == 1 )
n5.recursive.df<-subset( recursive.df, n == 5 )
n10.recursive.df<-subset( recursive.df, n == 10 )
n15.recursive.df<-subset( recursive.df, n == 15 )
n20.recursive.df<-subset( recursive.df, n == 20 )
n25.recursive.df<-subset( recursive.df, n == 25 )
n50.recursive.df<-subset( recursive.df, n == 50 )

n1.dynamic.df<-subset( dynamic.df, n == 1 )
n5.dynamic.df<-subset( dynamic.df, n == 5 )
n10.dynamic.df<-subset( dynamic.df, n == 10 )
n15.dynamic.df<-subset( dynamic.df, n == 15 )
n20.dynamic.df<-subset( dynamic.df, n == 20 )
n25.dynamic.df<-subset( dynamic.df, n == 25 )
n50.dynamic.df<-subset( dynamic.df, n == 50 )

n1.iterative.df<-subset( iterative.df, n == 1 )
n5.iterative.df<-subset( iterative.df, n == 5 )
n10.iterative.df<-subset( iterative.df, n == 10 )
n15.iterative.df<-subset( iterative.df, n == 15 )
n20.iterative.df<-subset( iterative.df, n == 20 )
n25.iterative.df<-subset( iterative.df, n == 25 )
n50.iterative.df<-subset( iterative.df, n == 50 )

#Combine them for ANOVA analysis later
n1.df<-rbind(n1.dynamic.df,n1.iterative.df,n1.recursive.df)
n5.df<-rbind(n5.dynamic.df,n5.iterative.df,n5.recursive.df)
n10.df<-rbind(n10.dynamic.df,n10.iterative.df,n10.recursive.df)
n15.df<-rbind(n15.dynamic.df,n15.iterative.df,n15.recursive.df)
n20.df<-rbind(n20.dynamic.df,n20.iterative.df,n20.recursive.df)
n25.df<-rbind(n25.dynamic.df,n25.iterative.df,n25.recursive.df)
n50.df<-rbind(n50.dynamic.df,n50.iterative.df,n50.recursive.df)

#Comparative boxplots
boxplot(t~alg, n5.df, log="y", ylab = "Time [s]", xlab = "Algorithm", main = "n = 5", names = c("Dynamic", "Iterative", "Recursive"))
boxplot(t~alg, n10.df, log="y", ylab = "Time [s]", xlab = "Algorithm", main = "n = 10", names = c("Dynamic", "Iterative", "Recursive"))
boxplot(t~alg, n15.df, log="y", ylab = "Time [s]", xlab = "Algorithm", main = "n = 15", names = c("Dynamic", "Iterative", "Recursive"))

#Get means and variances
aggregate(n5.df[,"t"], list(n5.df$alg),mean)
aggregate(n5.df[,"t"], list(n5.df$alg),var)
aggregate(n10.df[,"t"], list(n5.df$alg),mean)
aggregate(n10.df[,"t"], list(n5.df$alg),var)
aggregate(n15.df[,"t"], list(n5.df$alg),mean)
aggregate(n15.df[,"t"], list(n5.df$alg),var)
aggregate(n50.df[,"t"], list(n5.df$alg),mean)
aggregate(n50.df[,"t"], list(n5.df$alg),var)

#Let's generate some boxplots
#boxplot(n1.recursive.df$t,main="Recursive, n=1",ylab="Time[s]")
#boxplot(n25.recursive.df$t,main="Recursive, n=25",ylab="Time[s]")
#boxplot(n50.recursive.df$t,main="Recursive, n=50",ylab="Time[s]")

#boxplot(n1.dynamic.df$t,main="Dynamic, n=1",ylab="Time[s]")
#boxplot(n25.dynamic.df$t,main="Dynamic, n=25",ylab="Time[s]")
#boxplot(n50.dynamic.df$t,main="Dynamic, n=50",ylab="Time[s]")

#boxplot(n1.iterative.df$t,main="Iterative, n=1",ylab="Time[s]")
#boxplot(n25.iterative.df$t,main="Iterative, n=25",ylab="Time[s]")
#boxplot(n50.iterative.df$t,main="Iterative, n=50",ylab="Time[s]")

#CI
#error.bars.by(n50.df$t,n50.df$alg,eyes=FALSE)


