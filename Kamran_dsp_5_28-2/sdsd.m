clear all close all
k=0:255;
w=k*(pi/255);
n=0:3;
x=[1 2 3 4];
X=x*exp(-j*pi/255).^(n'*k);
subplot(411)
plot((w/pi),abs(X))
title('mag')
xlabel('w/pi');
ylabel('magnitude');
subplot(412)
plot((w/pi),angle(X))
title('Phase')
xlabel('w/pi');
ylabel('phase');
subplot(413)
plot((w/pi),real(X))
title('real part')
xlabel('w/pi');
ylabel('magnitude');
subplot(414)
plot((w/pi),imag(X))
title('image')
xlabel('w/pi');
ylabel('magnitude');