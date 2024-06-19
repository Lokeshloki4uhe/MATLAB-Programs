%PROGRAM CODE 1 :

clc;
clear all;
close all;
tic;% of giving linear spaces
t=0:0.01:pi;
%t=linespace(0,pi,20);
% generation of sine signals
y1=sin(t);
y2=sin(3*t)/3;
y3=sin(5*t)/5;
y4=sin(7*t)/7;
y5=sin(9*t)/9;
y=sin(t)+sin(3*t)/3+sin(5*t)/5+sin(7*t)/7+sin(9*t)/9;
plot(t,y,t,y1,t,y2,t,y3,t,y4,t,y5);
legend('y','y1','y2','y3','y4','y5');
title('generation of sum of sinusoidal signals');
grid;
ylabel('--->amplitude');
xlabel('--->t');
toc;

%Elapsed time is 1.342418 seconds.

%PROGRAM CODE 2:

clc;
Clear all
;
Close all
;
t=0:0.001:0.1;
f1=50;
x1=2*pi*f1*t;
y1=sin(x1);
figure;
subplot (3,1,1);
plot (t,y1);
title('sin(x1');
f2=100;
x2=2*pi*f2*t;
y2=sin(x2);
subplot(3,1,2);
plot(t,y2);
title('sin(x2)');
y=y1+y2;
subplot(3,1,3);
plot(t,y);
title('sinx1=sinx2'
)