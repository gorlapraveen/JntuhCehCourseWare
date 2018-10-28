function[x]=signal1(t)
t=0:0.1:10
x1=1;
x2=-1;
x=x1*(t<=5)+x2*(t>=5&t<=10)
b=fliplr(x)
stem(t,b)