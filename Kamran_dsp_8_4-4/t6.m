close all
clear all
n=0:6;
m=0:9;
N=length(n)
M=length(m)
g=sin(2*pi*0.5*n)  
h=sin(2*pi*0.3*m)
y=conv(g,h);
newg=[g zeros(1,(M-1))];
newh=[h zeros(1,(N-1))];
G=fft(newg);
H=fft(newh);
newY=G.*H;
y1=ifft(newY)
max(abs(y1-y))
newn=0:15;
NewN=length(newn)
subplot(211)

stem(((2*pi*newn)/NewN),y)
title('linear conv')
xlabel('t')
ylabel('Amplitude')
subplot(212)
stem(((2*pi*newn)/NewN),y1)
title('circ conv')
xlabel('t')
ylabel('Amplitude')

