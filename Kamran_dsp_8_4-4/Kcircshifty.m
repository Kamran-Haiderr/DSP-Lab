function [y,newn]=Kcircshifty(x,n,n0)
N=length(n);
y=x;
for i=1:N
newn(i)=mod((n(i)-n0),N)
end
end