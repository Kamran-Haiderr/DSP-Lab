b=[1 -1];
a=[1];
x=[1 1 1];
n=[0 1 2];
stem(n,x)
impz(b,a)
gh=filter(b,a,x)
stem(n,gh)