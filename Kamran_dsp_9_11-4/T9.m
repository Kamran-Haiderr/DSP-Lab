close all
clear all
num=[1 -1.2 1];
den=[1 -1.3 1.04 -0.22];
[gd,w]=grpdelay(num,den);
plot(w/pi,gd)