% 1.main function for FOURIER TRANSFORM of u(t)
clear all
close all
syms t
x=heaviside(t)
[ x ]=fourierfind(x);
disp('fourier transform of x=')
disp(x)