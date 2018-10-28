% program for AGC
close all
clear all
clc
Fs = 100e3; %sampling freq
t = 0:1/Fs:.1-1/Fs; % time variable
Am=2;
fm = 200; %fm 200 Hz
m = cos(2*pi*fm*t); %message signal
Fc = 3e3;
% am modulation
Ac = 8;
c=Ac.*cos(2*pi*Fc*t); %carrier signal
figure;
% ploting message and carrier signals
subplot(2,1,1);
plot(c);
title('carrier');xlabel('time');ylabel('amplitude');
subplot(2,1,2);
plot(m);
title('message');xlabel('time');ylabel('amplitude');
figure;
% ploting AM modulated output
s = ammod(m,Fc,Fs,0,Ac);
subplot(2,1,1);
plot(s);
title('am modulation ');xlabel('time');ylabel('amplitude');
z = amdemod(s,Fc,Fs,0,Ac);
subplot(2,1,2);
plot(z);
title('am demodulation ');xlabel('time');ylabel('amplitude');