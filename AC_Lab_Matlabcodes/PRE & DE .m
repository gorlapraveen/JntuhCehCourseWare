%program for Pre-Emphasis and De-Emphasis
close all
clear all
clc
num_samples = 2^13;
fs=5000;
Ts=1/fs;
fm1=20;
fm2=30;
fc=200;
t=(0:num_samples-1)*Ts;
f=(-num_samples/2:num_samples/2-1)*fs/num_samples;
mt=sin(2*pi*fm1*t);
Mf=fftshift(abs(fft(mt)));
f_cutoff_pe=15;
Wn_pe=f_cutoff_pe/(fs/2);
[b_pe,a_pe]=butter(1,Wn_pe);
[H_pe,W]=freqz(a_pe,b_pe);
a_de=b_pe;
b_de=a_pe;
[H_de,W]=freqz(a_de,b_de);
mt_pe=filter(a_pe,b_pe,mt);
Mf_pe=fftshift(abs(fft(mt_pe)));
figure(1)
subplot(211);plot(t,mt)
axis([0 .6 min(mt)-1 max(mt)+1])
grid on;title('Modulating Signal (Time Domain)')
subplot(212);plot(f,Mf)
grid on;axis([-50 50 0 max(Mf)+100])
title('Modulating Signal (Frequency Domain)')
figure(2)
subplot(211)
semilogx(W*pi*(fs/2),abs(H_pe),'m','linewidth',2)
axis([0 fs/2 0 50])
grid on;title('Pre-emphasis Filter Magnitude Response')
subplot(212)
semilogx(W*pi*(fs/2),abs(H_de),'m','linewidth',2)
axis([0 fs/2 0 1])
grid on;title('De-emphasis Filter Magnitude Response')