n=-20:20;
x1=sin(2*pi*0.5*n);
k=randn(1,length(n));
x=x1+k;
M=3;
b=(ones(1,M)*(1/M));
a=[1];
y=filter(b,a,x);
[m,w]=freqz(y)
subplot(511)
stem((w/pi),abs(m))
title('M=3 Amp')
xlabel('w/pi')
ylabel('Magnitude')


M=7;
bs1=(ones(1,M)*(1/M));
y1=filter(bs1,a,x);
[m1,w1]=freqz(y1)
subplot(512)
stem((w1/pi),abs(m1))
title('M=7 Amp')
xlabel('w/pi')
ylabel('Magnitude')


M=11;
bs2=(ones(1,M)*(1/M));
y2=filter(bs2,a,x);
[m2,w2]=freqz(y2)
subplot(513)
stem((w2/pi),abs(m2))
title('M=11 Amp')
xlabel('w/pi')
ylabel('Magnitude')


myb1=[0.5 0.27 0.77];
myb2=[0.45 0.5 0.45];
mya=[1 -0.53 0.46];
s1=filter(myb1,a,x)
[k,wp]=freqz(s1)
subplot(514)
stem((wp/pi),abs(k))
title('FIR System 1')
xlabel('w/pi')
ylabel('Magnitude')
s2=filter(myb2,mya,x)
[K1,W1]=freqz(s2)
subplot(515)
stem((W1/pi),abs(K1))
title('IIR System 2')
xlabel('w/pi')
ylabel('Magnitude')
