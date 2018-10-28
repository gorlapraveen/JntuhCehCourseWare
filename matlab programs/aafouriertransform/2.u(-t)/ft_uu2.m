%2.main function for FOURIER TRANSFORM of u(-t)
clear all
close all
syms t w
x=heaviside(-t)
subplot(311)
%figure
ezplot((x),[-5 5])
ylabel('amplitude')
title('input of signal x')
axis([-5 5 -1.5 1.5])
%grid on
X=fourier(x)
%plotting mag
%X=simplify(X)
subplot(312)
%figure
ezplot(abs(X))
ylabel('amplitude')
title('magnitude plot of FT of input signal x')
axis([-6 6 -5 5])
subplot(313)
%figure
%p=imag(log(x))
ezplot(imag(log(X)),[-5 5])
ylabel('amplitude')
title('phase plot of FT of input signal x')
axis([-5 5 -5 5])
disp('fourier transform of x=')
disp(x)