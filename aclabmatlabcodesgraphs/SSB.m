% program for ssb modulation and demodulation
close all
clear all
clc
fs=8000;
fm=20;
fc=50;
Am=1;
Ac=1;
t=(0:0.1*fs)/fs;
subplot(5,1,1);
m1=Am*cos(2*pi*fm*t);
plot(t,m1);
title('Message Signal')
m2=Am*sin(2*pi*fm*t);
subplot(5,1,2)
c1=Ac*cos(2*pi*fc*t);
plot(t,c1)
title('Carrier Signal');
c2=Ac*sin(2*pi*fc*t);
subplot(5,1,3)
% Susb=0.5* Am*cos(2*pi*fm*t).* Ac*cos(2*pi*fc*t) -- 0.5* Am*sin(2*pi*fm*t).* Ac*sin(2*pi*fc*t);
Susb=0.5*m1.*c1-0.5*m2.*c2;
plot(t,Susb);
title('SSB-SC Signal with USB');
subplot(5,1,4);
Slsb=0.5*m1.*c1+0.5*m2.*c2;
plot(t,Slsb);
title('SSB-SC Signal with LSB');
r = Susb.*c1;
subplot(5,1,5);
[b a] = butter(1,0.0001);
mr= filter(b,a,r);
plot(t,mr);
title('demodulated output');