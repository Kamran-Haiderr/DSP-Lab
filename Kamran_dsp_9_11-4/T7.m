close all
clear all
num=[3 0 0 0.15 0 -1];
den=[-3 1  0 0  .7];

mrtf=tf(num,den)
subplot 211
zplane(num,den)
subplot 212
impz(num,den)
figure
freqz(num,den)