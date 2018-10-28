% program for frequency synthesizer
close all;
clear all;
clc
fs = 10000;
t = 0:1/fs:1.5;
f=50;
x1 = square(2*pi*f*t);
subplot(3,1,1)
plot(t,x1); axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)');ylabel('Amplitude');
title('Square wave input with freq=50HZ');
t = 0:1/fs:1.5;
x2 = square(2*pi*2*f*t);
subplot(3,1,2)
plot(t,x2); axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)');ylabel('Amplitude');
title('frequency multiplication by a factor of 2');
x3 = square(2*pi*f/2*t);
subplot(3,1,3)
plot(t,x3); axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)');ylabel('Amplitude');
title('frequency division by a factor of 2');