clc;
clear all;
close all;
disp('IIR filter design using Butterworth Approximation');

ws=[0.2 .8]; 
wp=[0.5 0.7];
if ((wp(1) || wp(2))<=0)

error('Pass band edge must be larger than 0');
%Error message
end
if (ws<=0)

error('Pass band edge must be larger than 0');
end
if (ws>=wp)
error('Stop band edge must be smaller than pass band edge');
end

Fs=1

a1=-50;
a2=-80;
%conversion and normalization of frequencies
%pi radians/second

%conversion of frequency for transformation
Wp=2*Fs*tan(wp*pi/2);
Ws=2*Fs*tan(ws*pi/2);

[N,Wc]=buttord(Wp,Ws,a1,a2,'s');
[b,a]=butter(N,Wc,'bandpass','s');
[bz,az]=bilinear(b,a,Fs);

[H,w]=freqz(bz,az,512,Fs);

disp('Order of the filter is:');
disp(N);
disp('Filter coefficients are:');
disp('a');
disp(az);
disp('b');

disp(bz);
%Plotting responses
subplot(2,1,1);
plot(w/pi,abs(H));
xlabel('f in Hz');
ylabel('|H(w)|');

title(['Magnitude response of IIR  filter with Butterworth approximation using ']);
grid on;

subplot(2,1,2);
plot(w/pi,angle(H));
xlabel('f in Hz');
ylabel('Phase of H(w)');

title(['Phase response of IIR filter with Butterworth approximation using ']); grid on;
