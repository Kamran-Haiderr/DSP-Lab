z=tf('z')
h=((1+z^(-1))/2);
num=[1/2 1/2];
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
 
Cut_off_freq=180/2
figure
[Gd,w]=grpdelay(num,den);
plot(w/pi,Gd)
title('Group Delay')