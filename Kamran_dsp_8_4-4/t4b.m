close all
clear all
n0=5;
n=0:7;
k=0:7;
N=length(n);
D=exp(-j*2*pi*n0/N).^(k);
g=sin(2*pi*0.5*n);
subplot(311)
stem(g)
title('Sinusoidal Signal')
xlabel('t')
ylabel('Amplitude')
[newsig,newn]=Kcircshifty(g,n,n0);
stem(newsig)
G=fft(newsig);

newG=fft(g);
subplot (312)
stem(newn,abs(G))
title('time dom Circ-shifted')
xlabel('w/pi')
ylabel('Amplitude')
subplot (313)
stem(n,abs(newG))
title('Original time dom')
xlabel('w/pi')
ylabel('Amplitude')
max(abs(newG-G))
