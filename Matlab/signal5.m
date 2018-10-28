function[x]=signal5(t)
t=0:0.1:8 ;
x1=(1/2)*t ;
x2=1;
x3=(1/2)*t-1;
x4=t-8;
x=x1.*(t<=2)+x2.*(t>2&t<=4)+x3.*(t>4&t<6)+x4.*(t>=6&t<=8);
b=fliplr(x)
subplot(2,2,1)
stem(t,x);
subplot(2,2,2)
stem(t,b);