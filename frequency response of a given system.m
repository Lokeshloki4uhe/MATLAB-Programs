clc;
clear all;
close all;
% Difference equation of a second order system
% y[n]-0.25y[n-1]+0.45y[n-2]=1.55x[n]+1.95x[n-1]+ 2.15x[n-2]
b=input('enter the coefficients of x(n),x(n-1)-----');
a=input('enter the coefficients of y(n),y(n-1)----');
N=input('enter the number of samples of frequency response ');
[h,t]=freqz(b,a,N);
subplot(2,1,1);
% figure(1);
plot(t,h);
subplot(2,1,2);
% figure(2);
stem(t,h);
title('plot of frequency response');
ylabel('amplitude');
xlabel('time index----->N');
disp(h);
grid on;

%MATLAB program to plot the frequency response (magnitude and phase response)of agiven
difference equation.

clc;
clear all;
b=input('Enter the numerator coefficients:'); %coefficients of x(n)
a=input('Enter the denominator coefficients:'); %coefficients of y(n)
[h,w]=freqz(b,a);
subplot(2,1,1);
plot(w/pi,abs(h));
grid;
xlabel('Normalised Frequency');
ylabel('Magnitude in dB');
title('Magnitude Response');
subplot(2,1,2);
plot(w/pi,angle(h));
grid;
xlabel('Normalised Frequency');
ylabel('phase in radians');
title('Phase Response');