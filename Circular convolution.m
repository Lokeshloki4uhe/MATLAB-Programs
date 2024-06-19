clc;
clear all;
close all;
disp('circular convolution program');
x=input('enter i/p x(n):');
m=length(x);
h=input('enter i/p sequence h(n)');
n=length(h);
subplot(2,2,1), stem(x);
title('i/p sequencce x(n)is:');
xlabel('---->n');
ylabel('---->x(n)');grid;
subplot(2,2,2), stem(h);
title('i/p sequencce h(n)is:');
xlabel('---->n');
ylabel('---->h(n)');grid;
disp('circular convolution of x(n) & h(n) is y(n):');
if(m
-n~=0)
if(m>n)
h=[h,zeros(1,m
-n)];

n=m;
end
x=[x,zeros(1,n
-m)];

m=n;
end
y=zeros(1,n);
y(1)=0;
a(1)=h(1);
for j=2:n
a(j)=h(n
-j+2);
end
%ciruclarconv
for i=1:n
y(1)=y(1)+x(i)*a(i);
end
for k=2:n
y(k)=0;
% circular shift
for j=2:n
x2(j)=a(j
-1);
end
x2(1)=a(n);
for i=1:n
if(i<n+1)
a(i)=x2(i);
y(k)=y(k)+x(i)*a(i);
end
end
end
y
subplot(2,2,[3,4]),stem(y);
title('convolution of x(n) & h(n) is:');
xlabel('---->n');
ylabel('---->y(n)');
grid;