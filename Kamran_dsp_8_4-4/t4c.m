close all
clear all
n0=5;
n=0:7;
k=n;
N=length(n)
g=sin(2*pi*0.5*n);
D=exp(j*2*pi*n/N).^(5);
subplot(311)
stem(g)
title('Sinusoidal Signal')
xlabel('t')
ylabel('Amplitude')
expomultd=g.*D;
G=fft(expomultd);
 
newG=fft(g);
subplot (312)
stem(((2*pi*n)/8),abs(G))
title('time dom Exponential Multiplied')
xlabel('w/pi')
ylabel('Amplitude')
subplot (313)
stem(((2*pi*n)/8),abs(newG))
title('original time dom')
xlabel('w/pi')
ylabel('Amplitude')
max(abs(G-newG))