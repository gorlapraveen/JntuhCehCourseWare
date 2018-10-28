clear all
clc
x = [1 3 4 5]
n = [0 1 2 3]

h = [5 8 9 ]
m = [0 1 2]

[y0 N0] =convsig(x,n,h,m);

%  plotting signals
 subplot(3,1,1)
 stem(n,x)
 
 subplot(3,1,2)
 stem(m,h)
 
 subplot(3,1,3)
 stem(N0,y0)
 
 
 
 