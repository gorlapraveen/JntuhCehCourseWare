clc
clear all
close all
syms  t w
x=int((0.2.*heaviside(t+5))-(0.4.*(heaviside(t)))+(0.2.*(heaviside(t-5))))
subplot(211)
ezplot(x,[-10 10])
axis([-10 10 -1.5 1.5])
ylabel('amplitude')
title('input of the signal')
x=fourier(x)
%x=simplify(x)
subplot(212)
ezplot(abs(x),[-6,6])
axis([-6 6 -5 5])
ylabel('amplitude')
title('magnitude plot of the signal')
% subplot(313)
% ezplot(imag(log(x)),[-4 4])
% axis([-6 6 -5 5])
% ylabel('amplitude')