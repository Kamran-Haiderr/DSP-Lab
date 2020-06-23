close all; clear all
z=tf('z')
h=((1+z^(-1))/2);
%k=0:511; w=k*pi/511; h=0.5*(1+exp(-j*w)).^M
z=tf('z')
K=3;
G=((1+z^(-1))/2)^K
num=[1 3 3 1];
den=[1];
[z p k]=tf2zpk(num,den);
zplane(z,p)
title('PZ Map')
figure
freqz(num,den)
[H,w]=freqz(num,den);
title('freq resp')
figure
plot(w/pi,abs(H))
title('Gain Factor')
Cut_off_freq=(2*acos(2^((-1)/(2*K))))/pi
figure
[Gd,w]=grpdelay(num,den);
plot(w/pi,Gd)
title('Group Delay')