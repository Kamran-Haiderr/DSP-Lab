close all
clear all
num=[-1 0 0.15];
den=[0.7 0 -3 1];

mytff=tf(num,den)
subplot 211
zplane(num,den)
subplot 212
impz(num,den)
figure
freqz(num,den)