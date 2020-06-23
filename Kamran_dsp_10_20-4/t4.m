close all; clear all
z=tf('z')
M=2;
K=3
H1=0;
for n=0:(M-1)
   H1=H1+((-1)^n)*(z^-n) ;
end	
H1=((1/M)*H1)^K
num=[0.125 -0.375 0.375 -0.125];

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
Cut_off_freq=1-(2*acos(2^((-1)/(2*K))))/pi
figure
[Gd,w]=grpdelay(num,den);
plot(w/pi,Gd)
title('Group Delay')