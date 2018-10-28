% 3.main function for FOURIER TRANSFORM of u(t+2)-u(t-2)
clear all
close all
syms t w
x=heaviside(t+2)-heaviside(t-2)
[ X ]=fourierfind(x);
disp('fourier transform of x=')
disp(X)