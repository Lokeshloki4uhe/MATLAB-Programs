% MATLAB program for FIR Filter using windowing Techniques

clc;
clear all;
close all;
rp=input('enter passband ripple');
rs=input('enter the stopband ripple');
fp=input('enter passband freq');
fs=input('enter stopband freq');
f=input('enter sampling freq ');
wp=2*fp/f;
ws=2*fs/f;
num=-20*log10(sqrt(rp*rs))-13;
dem=14.6*(fs-fp)/f;
n=ceil(num/dem);
n1=n+1;
if(rem(n,2)~=0)
n1=n;
n=n-1;
end
c=input('enter your choice of window function 1. rectangular 2. triangular 3.kaiser: \n ');
if(c==1)
y=rectwin(n1);
disp('Rectangular window filter response');
end
if (c==2)
y=triang(n1);
disp('Triangular window filter response');
end
if(c==3)
y=kaiser(n1);
disp('kaiser window filter response');
end
%LPF
b=fir1(n,wp,y);
[h,o]=freqz(b,1,256);
m=20*log10(abs(h));
subplot(2,2,1);plot(o/pi,m);
title('LPF');
ylabel('Gain in dB-->');
xlabel('(a) Normalized frequency-->');
%HPF
b=fir1(n,wp,'high',y);
[h,o]=freqz(b,1,256);
m=20*log10(abs(h));
subplot(2,2,2);plot(o/pi,m);
title('HPF');
ylabel('Gain in dB-->');
xlabel('(b) Normalized frequency-->');
%BPF
wn=[wp ws];
b=fir1(n,wn,y);
[h,o]=freqz(b,1,256);
m=20*log10(abs(h));
subplot(2,2,3);plot(o/pi,m);
title('BPF');
ylabel('Gain in dB-->');
xlabel('(c) Normalized frequency-->');
%BSF
b=fir1(n,wn,'stop',y);
[h,o]=freqz(b,1,256);
m=20*log10(abs(h));
subplot(2,2,4);plot(o/pi,m);
title('BSF');
ylabel('Gain in dB-->');
xlabel('(d) Normalized frequency-->');

%MATLAB Program 2(FIR Low Pass Filter):

clc;
clear all;
wc=input('enter the value of cut off frequency');
N=input('enter the value of filter');
alpha=(N-1)/2;
eps=0.001;
%Rectangular Window
n=0:1:N-1;
hd=sin(wc*(n-alpha+eps))./(pi*(n-alpha+eps));
hn=hd
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h));
hold on
%Hamming Window
n=0:1:N-1;
wh=0.54-0.46*cos((2*pi*n)/(N-1));
hn=hd.*wh
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h),'ms');
hold off;
hold on
%Hanning Window
n=0:1:N-1;
wh=0.5-0.5*cos((2*pi*n)/(N-1));
hn=hd.*wh
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h),'blue');
hold off;
hold on
%Blackman Window
n=0:1:N-1;
wh=0.42-0.5*cos((2*pi*n)/(N-1))+0.08*cos((4*pi*n)/(N-1));
hn=hd.*wh
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h),'green');
hold off;

%Matlab Program for FIR HIGH PASS FILTER:

clc;
clear all;
wc=input('enter the value of cut off frequency');
N=input('enter the value of filter');
alpha=(N-1)/2;
eps=0.001;
%Rectangular Window
n=0:1:N-1;
hd=(sin(pi*(n-alpha+eps))-sin((n-alpha+eps)*wc))./(pi*(n-alpha+eps));
hn=hd
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h));
hold on
%Hamming Window
n=0:1:N-1;
wh=0.54-0.46*cos((2*pi*n)/(N-1));
hn=hd.*wh
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h),'ms');
hold off;
hold on
%Hanning Window
n=0:1:N-1;
wh=0.5-0.5*cos((2*pi*n)/(N-1));
hn=hd.*wh
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h),'blue');
hold off;
hold on
%Blackman Window
n=0:1:N-1;
wh=0.42-0.5*cos((2*pi*n)/(N-1))-0.08*cos((4*pi*n)/(N-1));
hn=hd.*wh
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h),'green');
hold off;