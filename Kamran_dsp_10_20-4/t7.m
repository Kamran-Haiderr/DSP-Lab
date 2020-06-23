close all
clear all 
z=tf('z')
a=0.5;
K=3;
Hlp=(((1-a)/2)*((1+z^(-1)))/(1-(a*(z)^(-1))))^K
num=[0.01563 0.04688 0.04688 0.01563 0 0 0];
den=[1 -1.5 0.75 -0.125 0 0 0];
[z p k]=tf2zpk(num,den);
zplane(z,p)
title('PZ Map')
figure
freqz(num,den)
[Hlp,w]=freqz(num,den);
title('freq resp')
figure
plot(w/pi,abs(Hlp))
title('Gain Factor')
figure
[Gd,w1]=grpdelay(num,den);
plot(w1/pi,Gd)
title('Group Delay')
 
wc=0.6443
a=(1-sin(wc))/cos(wc)
