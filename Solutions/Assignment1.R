#ques1
a<-c(5,10,15,20,25,30)
b=seq(5,30,by=5)
min(a)
max(b)



#ques2
a<-readline()
a<-as.integer(a)
f<-1
if(a<0)
{
  print("dont enter negative number")
}
while(a>0)
{
  f<-(a*f)
  a<-(a-1)
}
f



#ques3
total_terms   = as.integer(readline(prompt="How many terms? "))
num1 = 0
num2 = 1
count = 2

if (total_terms  <= 0) 
{
  print("enter a positive integer")
} else {
  if (total_terms == 1) {
    print("Fibonacci sequence:")
    print(num1)
  } else {
    print("Fibonacci sequence:")
    print(num1)
    print(num2)
    while (count < total_terms  ) {
      nxt = num1 + num2
      print(nxt)
      # update values
      num1 = num2
      num2 = nxt
      count = count + 1
    }
  }
}



#ques4
print("enter two numbers")
a<-as.integer(readline())
b<-as.integer(readline())
print("type 1 for addition, 2 for subtraction , 3 for multiplication , 4 for division")
c<-as.integer(readline())
if(c==1)print(a+b)
if(c==2)print(a-b)
if(c==3)print(a*b)
if(c==4)print(a/b)