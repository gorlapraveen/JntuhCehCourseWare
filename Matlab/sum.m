t=-10:0.1:10;
a=input('enter 1st signal');
b=input('enter 2nd signal');
[sum]=sumofsig(a,b);
plot(t,sum)