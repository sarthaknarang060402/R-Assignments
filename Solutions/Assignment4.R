#q1
x<-c(0,1,2,3,4)
p<-c(0.41,0.37,0.16,0.05,0.01) 
z1<-sum(x*p)
z2<-weighted.mean(x,p)
z3<-c(x%*%p)


#q2
f1<-function(t){
  t*0.1*(exp(-0.1*t))
}
integrate(f1,0,Inf)$value

#q3
x=c(0,1,2,3)
pd=c(0.1,0.2,0.2,0.5)
m=weighted.mean(x,pd)
10*m-12

#q4
f1=function(x){
  x*0.5*exp(-abs(x))
}
meanf=integrate(f1,1,10)
mf=meanf$value

f2=function(x){
  x*x*0.5*exp(-abs(x))
}
means=integrate(f2,1,10)
ms=means$value

ms- mf*mf


#q5
f<- function(y){(3/4)*(1/4)^(sqrt(y)-1)} 
x<- as.integer(readline("Enter the value of x")) 
y=x^2 
p<-f(y) 
print(p)
x<- c(1,2,3,4,5)
y<- x^2
proby <- f(y) 
print(proby)
ExpVal<-sum(y*proby) 
print(ExpVal)
z<-y^2
EY2<-sum(z*proby) 
Var<-EY2-(ExpVal)^2 
print(Var)