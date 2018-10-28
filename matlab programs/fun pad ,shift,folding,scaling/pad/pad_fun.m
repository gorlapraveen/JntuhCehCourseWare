clear all
clc
x1 = [1 3 4 5 6 7 8 9];
% x1=input('enter 1st sig x1')
m = [-2 -1 0 1 2 3 4 5];
% m=input('enter 1st sig x1 indices')
x2 = [5 8 9 ];
% x2=input('enter 2nd sig x2')
n = [0 1 2];
% n=input('enter 2nd sig x2 indices')
[x1out x2out np]=paddingsig(x1,m,x2,n);
% disp('x1out')
%disp('x2out')
%disp('np')

