mydata=read.csv("YearWise_End.csv")
mydata
y=mydata$Rainfall..mm.
x1=mydata$Mean.T
x2=mydata$Max.T
x3=mydata$Min.T
x4=mydata$Mean.Humidity
x5=mydata$No_rainyday
x6=mydata$wind.speed.km.hr.
x7=mydata$Sea.level.Pressure.hPa.
fit=lm(y~x1+x2+x3+x4+x5+x6+x7)
summary(fit)
method=function(x1,x2,x3,x4,x5,x6,x7)
{
  exprainfall=(-3.796e+05+(x1*1.946e+02)+(x2*(4.057e+01))+(x3*6.002e+01)+(x4*6.300e+01)+(x5*9.262e+00)+(x6*-2.620e+01)+(x7*3.660e+02))
  return (exprainfall)
}
exprainfall=method(x1,x2,x3,x4,x5,x6,x7)
exprainfall
plot(mydata$Year,y,xlab="Year Wise Rainfall",ylab="Rainfall in MM",type="b",col="blue")
lines(mydata$Year,exprainfall,type="b",col="red")