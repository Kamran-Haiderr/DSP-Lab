clc;
clear all;
close all;
disp('IIR filter design using Butterworth Approximation');

fs=input('Enter stop band frequencies fs1 and fs2 (fs2 >fs1) in Hz '); 
fp=input('Enter pass band frequencies fp1 and fs2 (fp1 >fs1 and fp2<fp2) in Hz '); if (fp(1) || fp(2))<=0

error('Pass band edge must be larger than 0');
%Error message
end
if fs<=0

error('Pass band edge must be larger than 0');
end
if fs>=fp
error('Stop band edge must be smaller than pass band edge');
end

Fs=input('Enter sampling frequency F in samples/sec ');

a1=input('Enter pass band ripple in dB ');
a2=input('Enter stop band ripple in dB ');
%conversion and normalization of frequencies
%pi radians/second

wp=2*fp/Fs;
ws=2*fs/Fs;
%conversion of frequency for transformation
Wp=2*Fs*tan(wp*pi/2);
Ws=2*Fs*tan(ws*pi/2);

[N,Wc]=cheb2ord(Wp,Ws,a1,a2,'s');
[b,a]=cheby2(N,abs(a1),Wc,'s');

[bz,az]=bilinear(b,a,Fs);

[H,f]=freqz(bz,az,512,Fs);

disp('Order of the filter is:');
disp(N);
disp('Filter coefficients are:');
disp('a');
disp(az);
disp('b');

disp(bz);
%Plotting responses
subplot(2,1,1);
plot(f,abs(H));
xlabel('f in Hz');
ylabel('|H(w)|');

title(['Magnitude response of IIR ',ftype,' filter with Butterworth approximation using ',trans]);
grid on;

subplot(2,1,2);
plot(f,angle(H));
xlabel('f in Hz');
ylabel('Phase of H(w)');

title(['Phase response of IIR ',ftype,' filter with Butterworth approximation using ',trans]); grid on;
