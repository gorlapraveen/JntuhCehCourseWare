
function [X]=fourierfind(x)
syms t
subplot(311)
%figure
ezplot(x,[-3 3])
ylabel('amplitude')
title('input of signal x')
axis([-2.5 2.5 -0.1 1.1])
%grid on
X=fourier(x)
%plotting mag
%x=simplify(x)
subplot(312)
%figure
ezplot(X,[-50 50])
ylabel('amplitude')
title('magnitude plot of FT of input signal x')
axis([-50 50 -1 5])
subplot(313)
%figure

ezplot(imag(log(X)),[-10 10])
ylabel('amplitude')
title('phase plot of FT of input signal x')
axis([-10 10 -3.5 3.5])