t=0:0.1:15 ;
x1=(1/5)*t ;
x2=1 ;
x3=(-1/5)*t+3 ;
x=x1.*(t<5)+x2.*(t>=5&t<=10)+x3.*(t>10&t<=15) ;
stem(t,x);
