w=[-4*pi:(8*pi/511):4*pi];
a=[0.7 -.5 .3 1];
b=[1 .3 -.5 .7];
h=freqz(a,b,w);
subplot(411)
plot((w/pi),abs(h))
title('mag')
xlabel('w/pi');
ylabel('magnitude');
subplot(412)
plot((w/pi),unwrap(angle(h)))
title('Phase')
xlabel('w/pi');
ylabel('phase');
subplot(413)
plot((w/pi),real(h))
title('real part')
xlabel('w/pi');
ylabel('magnitude');
subplot(414)
plot((w/pi),imag(h))
title('image')
xlabel('w/pi');
ylabel('magnitude');