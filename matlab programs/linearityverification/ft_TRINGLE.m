% 4.main function for FOURIER TRANSFORM of TRIANGLE
clear all
close all
syms t
x=int((1/2)*heaviside(t+2)-(2/2)*heaviside(t)+(1/2)*heaviside(t-2))
[ x ]=fourierfind(x);
disp('fourier transform of x=')
disp(x)