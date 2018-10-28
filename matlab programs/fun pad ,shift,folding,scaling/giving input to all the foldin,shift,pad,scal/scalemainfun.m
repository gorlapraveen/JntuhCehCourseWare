n=0:0.1:6
x=sinc(n)
%x=[4 3 5 6 7 8]input('enter input')
%n=[1 2 3 4 6 7 ]input('enter range of time')
subplot(211)
stem(n,x)
a=0.5
[x0,n0]=scalesig(x,n,a);
subplot(212)
stem(n0,x0)