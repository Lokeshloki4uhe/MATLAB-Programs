%MATLAB PROGRAM(Digital IIR Butterworth Filter):

clc;
close all;
clear all;
format long
rp=input('enter the passband ripple');
rs=input('enter stopband ripple');
wp=input('enter passband freq');
ws=input('enter stopband freq');
fs=input('enter sampling freq');
w1=2*wp/fs;
w2=2*ws/fs;
%digital lpf
[n,wn]= buttord(w1,w2,rp,rs);
[b,a]=butter(n,wn);
w=0:.01:pi;
[h,om]=freqz(b,a,w);
m=20*log10(abs(h));
an=angle(h);
subplot(4,2,1);
plot(om/pi,m);
ylabel('gain in db...>');
xlabel('normalised freq..>');
subplot(4,2,2);
plot(om/pi,an);
xlabel('normalised freq..>');
ylabel('phase in radians...>');
n
wn
%hpf
[n,wn]= buttord(w1,w2,rp,rs);
[b,a]=butter(n,wn,'high');
w=0:.01:pi;
[h,om]=freqz(b,a,w);
m=20*log10(abs(h));
an=angle(h);
subplot(4,2,3);
plot(om/pi,m);
ylabel('gain in db...>');
xlabel('normalised freq..>');
subplot(4,2,4);
plot(om/pi,an);
xlabel('normalised freq..>');
ylabel('phase in radians...>');
n
wn