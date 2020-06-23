close all
clear all
w=0:4;
b=[1 2 0 -2 -1] ;
a=[1];
zplane(b,a);
l=length(b);
x=ones(1,l);
[h]=filter(b,a,x);
figure
subplot 311
plot(w,abs(h))
xlabel('w')
ylabel('Magnitude')
title('Frequency Response')
subplot 312
plot(w,angle(h))
xlabel('w')
ylabel('Phase')
title('Phase Response')
subplot 313
grpdelay(b,a)