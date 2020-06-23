b=[1 -1];
a=[1];
n=-2:6;
x=1*(n>=0);
stem(n,x)
gh=filter(b,a,x)
figure
stem(n,gh)