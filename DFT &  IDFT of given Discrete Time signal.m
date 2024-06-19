%MATLAB PROGRAM 1(By Using Builtin Function):

clc;
clear all;
close all;
x=input(‘Enter the sequence : ‘)
N=length(x)
xK=fft(x,N)
xn=ifft(xK)
n=0:N-1;
subplot (2,2,1);
stem(n,x);
xlabel(‘n--’);
ylabel(‘amplitude’);
title(‘input sequence’);
subplot (2,2,2);
stem(n,abs(xK));
xlabel(‘n--’);
ylabel(‘magnitude’);
title(‘magnitude response’);
subplot (2,2,3);
stem(n,angle(xK));
xlabel(‘n--’);
ylabel(‘phase’);
title(‘Phase responce’);
subplot (2,2,4);
stem(n,xn);
xlabel(‘n--’);
ylabel(‘amplitude’);
title(‘IFFT’);

%MATLAB PROGRAM 2(Direct Method):

%program to generate DFT of a given sequence
clc;
clear all;
close all;
x=input('enter sequence');
L=length(x);
for i=1:L
s=0;
for k=1:L
s=s+x(k).*exp(-j*2*pi*(i-1)*(k-1)/L);
end;
c(i)=s;
a=abs(c)
end;
display(c);
%program to generate IDFT of a given sequence
clc;
clear all;
close all;
x=input('enter sequence');
L=length(x);
for i=1:L
s=0;
for k=1:L
s=s+x(k).*exp(j*2*pi*(i-1)*(k-1)/L);
end;
c(i)=s/L;
end;
display(c);