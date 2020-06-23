close all
clc
clear all
n=0:7;
x=(n>0).*(n<5);
h=0.5*((n>0).*(n<6));
y=conv(x,h)
subplot(311)
plot(n,x)
subplot(312)
plot(n,h)
subplot(313)
l=length(x)+(length(h)-1);
N=0:(l-1)
plot(N,y)
