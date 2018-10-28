syms t w
x = heaviside(t + 2) - heaviside(t - 2);
subplot(311)
ezplot(x,[-3 3]);
ylabel('amplitude')
title('input of signal x')
axis([-3 3 -0.1 1.1]);
grid
X = fourier(x) % Fourier transform
subplot(312)
ezplot(X, [-50 50]); 
ylabel('amplitude')
title('magnitude plot of FT of input signal x')
axis([-50 50 -1 5]);
subplot(313)
x2=imag(log(X))
%x2=atan(imag(x)./real(x))
ezplot(x2,[-10 10]); 
ylabel('amplitude')
title('phase plot of FT of input signal x')
axis([-10 10 -3.5 3.5]);
grid on