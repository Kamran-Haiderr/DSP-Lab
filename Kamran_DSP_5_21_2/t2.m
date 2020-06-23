close all
clc
clear all
n=-5:20;
x=(n>=0).*(n<10);
x1=(n==0);
subplot(411)
plot(n,x)
title('input')
xlabel('index')
ylabel('Amplitudes')
b=[1];
a=[1 -0.9];
h=filter(b,a,x1)
y=conv(x,h)

subplot(412)
plot(n,h)
title('system')
xlabel('index')
ylabel('Amplitudes')
subplot(413)
l=length(x)+(length(h)-1);
N=0:(l-1)
plot(N,y)
title('output using conv')
xlabel('index')
ylabel('Amplitudes')

subplot(414)
y1=filter(b,a,x)
plot(n,y1)
title('output using filter')
xlabel('index')
ylabel('Amplitudes')