
%exp(-2t)u(t)
clc
clear all
close all
t=-10:0.01:10
% actual signalx(t)
u=0.5*sign(t)+0.5
x1=exp(-1.5*t).*u;
subplot(311)
plot(t,x1)
%time reversed signal x(-t)
x2=fliplr(x1)
%even component
xe=0.5*(x1+x2)
subplot(312)
plot(t,xe)
%odd component
xo=0.5*(x1-x2)
subplot(313)
plot(t,xo)

