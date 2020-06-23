num=[2 16 44 56 32];
den=[3 3 -15 18 -12];
subplot 211
[z p k]=tf2zpk(num,den)
zplane(z,p)
subplot 212
impz(num,den)