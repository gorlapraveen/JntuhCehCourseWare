%program of spectrum analyzer and analysis of am and fm signals
close all
clear all
clc
Fs = 100; %sampling frq
t = (0:2*Fs+1)'/Fs;
Fc = 10; % Carrier frequency
x = sin(2*pi*2*t); % message signal
Ac=1;
% compute spectra of am
xam=ammod(x,Fc,Fs,0,Ac);
zam = fft(xam);
zam = abs(zam(1:length(zam)/2+1));
frqam = (0:length(zam)-1)*Fs/length(zam)/2;
% compute spectra of dsbsc
ydouble = ammod(x,Fc,Fs, 3.14,0);
zdouble = fft(ydouble);
zdouble = abs(zdouble(1:length(zdouble)/2+1));
frqdouble = (0:length(zdouble)-1)*Fs/length(zdouble)/2;
% compute spectra of ssb
ysingle = ssbmod(x,Fc,Fs,0,'upper');
zsingle = fft(ysingle);
zsingle = abs(zsingle(1:length(zsingle)/2+1));
frqsingle = (0:length(zsingle)-1)*Fs/length(zsingle)/2;
% Plot spectrums of am dsbsc and ssb
figure;
subplot(3,1,1); plot(frqam,zam);
title('Spectrum of am signal');
subplot(3,1,2); plot(frqdouble,zdouble);
title('Spectrum of double-sideband signal');
subplot(3,1,3); plot(frqsingle,zsingle);
title('Spectrum of single-sideband signal');
% spectrum of fm
xfm=fmmod(x,Fc,Fs,10);
zfm = fft(xfm);
zfm = abs(zfm(1:length(zfm)/2+1));
frqfm = (0:length(zfm)-1)*Fs/length(zfm)/2;
figure;
plot(frqfm,zfm);
title('Spectrum of fm signal');