function [x]=fourierfind(x)
syms t
subplot(311)
%figure
ezplot((x),[-5 5])
ylabel('amplitude')
title('input of signal x')
axis([-5 5 -1.5 1.5])
%grid on
x=fourier(x)
%plotting mag
x=simplify(x)
subplot(312)
%figure
ezplot(abs(x))
ylabel('amplitude')
title('magnitude plot of FT of input signal x')
axis([-10 10 -10 10])
subplot(313)
%figure
p=imag(log(x))
ezplot(p,[-5 5])
ylabel('amplitude')
title('phase plot of FT of input signal x')
axis([-5 5 -5 5])