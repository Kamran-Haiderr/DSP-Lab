n=0:25;
k=0:255;
w=k*(pi/255);
x1=randn(1,length(n));
x2=randn(1,length(n));
alpha=2;
beta=3;
x=(alpha.*x1)+(beta.*x2);
X=x*exp(-j*pi/255).^(n'*k);
X1=x1*exp(-j*pi/255).^(n'*k);
X2=x2*exp(-j*pi/255).^(n'*k);
TheX=X1+X2;
subplot(211)
plot((w/pi),abs(X))
title('Time dom added then fouriered ')
xlabel('w/pi');
ylabel('magnitude');
subplot(212)
plot((w/pi),abs(TheX))
title('Time dom fouriered then added  ' )
xlabel('w/pi');
ylabel('magnitude');