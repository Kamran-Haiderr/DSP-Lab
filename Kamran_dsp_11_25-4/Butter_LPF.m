clc;
clear all;
close all;
disp('IIR filter design using Butterworth Approximation');
 
%wp=input('Enter pass band frequency wp ');
%ws=input('Enter stop band frequency ws ');
wp=0.4
ws=0.6
%Error message
if (wp<=0)
 
error('Pass band edge must be larger than 0');
end
if (wp>=ws)
error('Stop band edge must be smaller than pass band edge');
end
 
Fs=1;%Fs=input('Enter sampling frequency F in samples/sec ');
 
%a1=input('Enter pass band ripple in dB ');
%a2=input('Enter stop band ripple in dB ');
ap=-40;as=-60
%conversion of frequency for transformation
Wp=tan(wp*(pi/2))
Ws=tan(ws*(pi/2))
 
[N,Wc]=buttord(Wp,Ws,ap,as,'s')
[b,a]=butter(N,Wc,'s')
[bz,az]=bilinear(b,a,Fs)
 
[H,w]=freqz(bz,az,512);
 
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
xlabel('w/pi');
ylabel('|H(w)|');
 
title('Magnitude response of IIR  filter with Butterworth approximation using Bilinear ');
grid on;
 
subplot(2,1,2);
plot(w/pi,(angle(H)));
xlabel('w/pi');
ylabel('Phase of H(w)');
 
title('Phase response of IIR  filter with Butterworth approximation using Bilinear');
grid on;
