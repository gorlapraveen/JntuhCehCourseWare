% gibbs phenomenon
clear all
% function [y]=gibbsmain(ul)
t=0:0.01:3.14*2
ul=input('enter upper limit of odd harmonics')
x=zeros(size(t))
y=zeros(11,length(t))
for N=1:2:ul
    x=x+sin(N*t)/N;
    y(((N+1)/2),:)=x
end
plot(y((1:2:11),:)')
title('gibbs phenomenon')