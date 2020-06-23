close all,clear all
x1=[1 2 1];
x2=[0 0 0 0];
n1=1:3;
n2=0:3;
[yay,nay]=addsig(x1,n1,x2,n2)
stem(yay)