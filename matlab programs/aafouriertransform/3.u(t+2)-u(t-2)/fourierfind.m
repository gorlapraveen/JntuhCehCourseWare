function [x]=fourierfind(x)
syms t
subplot(311)
%figure
ezplot((x),[-3 3])
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
axis([-4 4 -5 5])
subplot(313)
%figure
p=imag(log(x))
ezplot(p,[-10 10])
ylabel('amplitude')
title('phase plot of FT of input signal x')
axis([-10 10 -5 5])