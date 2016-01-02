mydata=read.csv("June_End.csv")
mydata
x1=mydata$Monthyear
x2=mydata$Rainfall
exprainfall=c()
for(i in 1:10)
{
  
  exprainfall=c(exprainfall,(x2[i]+x2[i+1]+x2[i+2])/3)
}
exprainfall
rainfall=c()
for(i in 3:12)
{
  rainfall=c(rainfall,x2[i])
}
monthyear=c()
for(i in 3:12)
{
  monthyear=c(monthyear,x1[i])
}
monthyear
plot(monthyear,rainfall,col="blue",xlab="Moving Avg for June 2003-2013",ylab="Rainfall in MM ")
lines(monthyear,exprainfall,col="red",type="p")