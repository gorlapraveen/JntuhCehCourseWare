%exp(-2abs(t))
clc
clear all
close all
syms  t w
x=exp(-2*abs(t))
subplot(311)
ezplot(x,[-10 10])
axis([-5 5 0 1])
ylabel('amplitude')
title('input of the signal')
x=fourier(x)
disp('FT of a input signal is =')
disp(x)
x=simplify(x)
subplot(312)
ylabel('amplitude')
title('magnitude plot of an input')
ezplot(abs(x),[-3 3])
subplot(313)
ylabel('amplitude')
title('phase plot of an input')
ezplot(imag(log(x)),[-3 3])