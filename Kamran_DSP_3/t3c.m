n=-10:10;
x=[n>=0];
b0=[1];
a0=[1 1.2];
y0=filter(b0,a0,x);
subplot(211)
stem(n,y0)
b1=[1];
a1=[1 -1.2];
y1=filter(b1,a1,x);
subplot(212)
stem(n,y1)