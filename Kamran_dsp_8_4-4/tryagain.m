close all
clear all
n0=1;
n=0:7;
N=length(n);
g=sin(2*pi*0.5*n);
[G,NEWN]=Kcircshifty(g,n,n0)
subplot 211
stem(n,g)
subplot 212
stem(NEWN,G)