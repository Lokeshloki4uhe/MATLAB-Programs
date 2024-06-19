%MATLAB PROGRAM 1:

clc;
clear all;
close all;
t=0:0.001:0.6;
x=sin(2*pi*50*t);
y=x+(2*randn(size(t)));
figure,plot(1000*t(1:50),y(1:50))
title('Signal corrupted with zero mean random noise');
xlabel('time(msec)');
y=fft(y,512);
pyy=y.*conj(y)/512;
f=1000*(0:256)/512;
figure,plot(f,pyy(1:257))
title('frequency content of y');
xlabel('frequency(hz)');

%MATLAB Program2:

Clc;
clear all;
close all;
N=1024;
fs=8000;
f=input('enter the frequency[1 to 5000]:');
n=0:N-1;
x=sin(2*pi*(f/fs)*n)
pxx=spectrum(x,N);
specplot(pxx,fs);
grid on
xlabel('freq(hz)');
ylabel('magnitude(db)');
title('power spectrum of x(n)');