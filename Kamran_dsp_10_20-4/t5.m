close all
clear all 
z=tf('z')
a=0.5;
Hlp=((1-a)/2)*((1+z^(-1)))/(1-(a*(z)^(-1)))
num=[0.25 0.25];
den=[1 -0.5];
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
