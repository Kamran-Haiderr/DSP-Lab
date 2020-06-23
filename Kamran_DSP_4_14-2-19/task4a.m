close all
n=0:100;
fl=0.05;
fh=0.47;
x1=sin(2*pi*fl*n);
x2=sin(2*pi*fh*n);
x=x1+x2;
[m,w]=freqz(x)
subplot(411)
stem((w/pi),abs(m))
title('input sig')
xlabel('w/pi')
ylabel('Magnitude')
a=[1];
M=2;
b=(ones(1,M)*(1/M))
y=filter(b,a,x);
[k,w1]=freqz(y)
subplot(412)
stem((w1/pi),abs(k))
title('Mov avg fil 2')
xlabel('w/pi')
ylabel('Magnitude')
M=4;
b=(ones(1,M)*(1/M))
y1=filter(b,a,x);
[k1,w2]=freqz(y1)
subplot(413)
stem((w2/pi),abs(k1))
title('Mov avg fil 4')
xlabel('w/pi')
ylabel('Magnitude')
M=10;
b=(ones(1,M)*(1/M))
y2=filter(b,a,x);
[k3,w3]=freqz(y2)
subplot(414)
stem((w3/pi),abs(k3))
title('Mov avg fil 10')
xlabel('w/pi')
ylabel('Magnitude')