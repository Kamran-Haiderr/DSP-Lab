close all
clear all
x1=rand(1,5);
x2=rand(1,5);
alpha=2;
beta=5;
y1=alpha*x1;
y2=beta*x2;
y=y1+y2;
Y=fft(y);
 
X1=fft(x1);
X2=fft(x2);
Y1=alpha*X1;
Y2=beta*X2;
MY=Y1+Y2;
max(abs(MY-Y))
%kammmmmmmrannnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn