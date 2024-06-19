Matlab Program 1 :

clc;
clear all;
close all;
disp('Difference Equation of a digital system');
N=input('Desired Impulse response length = ');
b=input('Coefficients of x[n] terms = ');
a=input('Coefficients of y[n] terms = ');
h=impz(b,a,N); disp('Impulse response of the system is h = ');
disp(h);
n=0:1:N-1;
figure(1);
stem(n,h);
xlabel('time index');
ylabel('h[n]');
title('Impulse response');
figure(2);
zplane(b,a);
xlabel('Real part');
ylabel('Imaginary part');
title('Poles and Zeros of H[z] in Z-plane');


Matlab Program 2:

clc;
close all;
clear all;
n=0:10;
%impulse response of first order system
b=[2 0 0];
a=[1
-0.9 0];
y=dimpulse(b,a,length(n));
subplot(2,1,1);
stem(n,y);
xlabel('n--->');
ylabel('amplitude');
title('impulse response of first order system');
%impulse response of second order system
b=[1 0 0];
a=[1 0.6 0.8];
y1=dimpulse(b,a,length(n));
subplot(2,1,2);
stem(n,y1);
xlabel('n --->');
ylabel('amplitude');
title('impulse response of second order system');