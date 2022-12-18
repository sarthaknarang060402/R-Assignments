library ("pracma") 

#Question 1 (i)
func = function(x,y) {
  (2*(2*x+3*y)/5)
}

inter =integral2(func,xmin=0,xmax=1,ymin=0,ymax=1)
inter 
inter$Q  #to get absolute value of integration without error 

#Question 1 (ii)
func1 = function(y) (2*(2+3*y)/5)
inter1= integrate(func1, lower=0, upper=1)
inter1
inter1$value #Absolute value

#Question 1 (iii)
func2 = function(x) (2*(2*x)/5)
inter2= integrate(func2, lower=0, upper=1)
inter2
inter2$value #Absolute value

#Question 1 (iv)
func3 = function(x,y) (2*(2*x+3*y)/5)*x*y
mean1 = integral2(func3,xmin=0,xmax=1,ymin=0,ymax=1)
mean1
mean1$value #Absolute value


#Question 2 (i)
func1=function(x,y) (x+y)/30
#x=c(0:3)
#y=c(0:2)
m1=matrix(c(func1(0,0:2),func1(1,0:2),func1(2,0:2),func1(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
m1

#Question 2 (ii)
sum(m1) #if sum=1, so it is joint mass function

#Question 2 (iii)
r=apply(m1,1,sum) #row-wise addition
r


#Question 2 (iv)
c=apply(m1,2,sum) #column-wise addition
c

#Question 2 (v)
c[2]
func1(0,1)/c[2]

#Question 2 (vi)
meanx= sum(x*r)
meanx

meany=sum(y*c)
meany

func2=function(x,y) ((x+y)/30)*x*y
x=c(0:3)
y=c(0:2)
m2=matrix(c(func2(0,0:2),func2(1,0:2),func2(2,0:2),func2(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
m2
meanxy=sum(m2)
meanxy

varx=sum(x^2*r)-meanx^2
varx

vary=sum(y^2*c)-meany^2
vary

covariance = (meanxy)-(meanx*meany)
covariance

correlation=covariance/(sqrt(varx)*sqrt(vary))
correlation