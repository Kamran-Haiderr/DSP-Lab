n=0:50;
x1=sin(2*pi*0.5*n);
M=5;
b=(ones(1,M)*(1/M));
a=[1];
h=filter(b,a,x1)
[H,w]=freqz(h)
subplot(311)
stem(n,h)
subplot(312)
stem((w/pi),abs(H))
title('M=5 Amp')
xlabel('w/pi')
ylabel('Magnitude')
subplot(313)
stem((w/pi),angle(H))
title('M=5 Phase')
xlabel('w/pi')
ylabel('Magnitude')
