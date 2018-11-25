#R analysis for M381 Project, Team 6

#get data
recursive.df<-read.csv( "./recursive/data.csv" )
dynamic.df<-read.csv( "./dynamic/data.csv" )
iterative.df<-read.csv( "./iterative/data.csv" )

#Let's choose 3 n values to analyze
n1.recursive.df<-subset( recursive.df, n == 1 )
n25.recursive.df<-subset( recursive.df, n == 25 )
n50.recursive.df<-subset( recursive.df, n == 50 )

n1.dynamic.df<-subset( dynamic.df, n == 1 )
n25.dynamic.df<-subset( dynamic.df, n == 25 )
n50.dynamic.df<-subset( dynamic.df, n == 50 )

n1.iterative.df<-subset( iterative.df, n ==1 )
n25.iterative.df<-subset( iterative.df, n == 25 )
n50.iterative.df<-subset( iterative.df, n == 50 )

#Let's generate some boxplots
boxplot(n1.recursive.df$t,main="Recursive, n=1",ylab="Time[s]")
boxplot(n25.recursive.df$t,main="Recursive, n=25",ylab="Time[s]")
boxplot(n50.recursive.df$t,main="Recursive, n=50",ylab="Time[s]")

boxplot(n1.dynamic.df$t,main="Dynamic, n=1",ylab="Time[s]")
boxplot(n25.dynamic.df$t,main="Dynamic, n=25",ylab="Time[s]")
boxplot(n50.dynamic.df$t,main="Dynamic, n=50",ylab="Time[s]")

boxplot(n1.iterative.df$t,main="Iterative, n=1",ylab="Time[s]")
boxplot(n25.iterative.df$t,main="Iterative, n=25",ylab="Time[s]")
boxplot(n50.iterative.df$t,main="Iterative, n=50",ylab="Time[s]")


