num=[0.15 0 -.15];
den=[1 -0.5 0.7];
mytf=tf(num,den)
[z p k]=tf2zpk(num,den);
zplane(z,p)
figure
freqz(num,den)