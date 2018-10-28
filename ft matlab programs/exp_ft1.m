% e^(-2t)*u(t)
clc
clear all
close all
syms  t w
x=exp(-2*t)*heaviside(t)
subplot(311)
ezplot(x,[-10 10])
axis([-5 5 0 1])
ylabel('amplitude')
title('input of the signal')
x=fourier(x)
x=simplify(x)
subplot(312)
ezplot(abs(x),[-3 3])
subplot(313)
ezplot(imag(log(x)),[-3 3])

