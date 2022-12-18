#Question 1
n=100
df=99
x=rt(n,df)
hist(x)

#Question 2
n=100
df=c(2,10,25)
r1=rchisq(n,df[1])
r1
r2=rchisq(n,df[2])
r2
r3=rchisq(n,df[3])
r3

#Question 3
x=seq(-6,6,length=100)
x
df=c(1,4,10,30)
dt(x,df[4]) 
plot(x,dt(x,df[4]),type="l",xlab="t-value",ylab="Density",main="Plot with degree of freedom=30")
dt(x,df[3])
dt(x,df[2])
dt(x,df[1])
for(i in 1:4){
  lines(x,dt(x,df[i]),type="l",col=i,main="Comparison of degree of freedom ")
}

#Question 4(i)
df1=10
df2=20
c1=qf(0.95,df1,df2)
c1

#Question 4(ii)
c2=pf(1.5,df1,df2,lower.tail = TRUE)
c2
c3=pf(1.5,df1,df2,lower.tail = FALSE)
c3

#Question 4(iii)
q=c(0.25,0.5,0.75,0.999)
for(i in 1:4)
{
  z=qf(q[i],df1,df2)
  print(z)
  
}

#Question 4(iv)
m=rf(1000,df1,df2)
m
hist(m)
