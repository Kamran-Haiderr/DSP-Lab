b=[1 -1];
a=[1];
n=-10:10;
x=[n==0];
y=filter(b,a,x);
stem(n,y);