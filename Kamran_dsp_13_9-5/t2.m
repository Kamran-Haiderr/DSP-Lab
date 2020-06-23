close all
clear all
b=[1 -1 1]
a=[1];
n=1:80;
x=sin(2*pi*1/8*n+(pi/6));
y=filter(b,a,x);
plot(n,abs(y))
xlabel('w/pi')
ylabel('Magnitude')
figure
freqz(b,a)