n=-10:10;
x=[n==0];
M=5;
b=(ones(1,M)*(1/M));
a=[1];
y=filter(b,a,x);
stem(n,y)