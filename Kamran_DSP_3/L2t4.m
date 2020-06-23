clc, clear;
Dt=0.01;
F=1000/(2000+4000);
t=0:Dt:12;
f1=sin(2*pi*2000*t);
f2=sin(2*4000*pi*t);
y_t = f1+f2;
% Oversampling 
%y_n=y_t(1:1/((2*f/Fs)*Dt):end);
fs=4*F;
Ts1=1/fs;
n1=t(1)/Ts1:1:t(end)/Ts1;
y_n1=sin(2*pi*F*n1*Ts1);  
%Under sampling 
fs=1.5*F;Ts2=1/fs;
n2=t(1)/Ts2:1:t(end)/Ts2;
y_n2=sin(2*pi*F*n2*Ts2);
n=0:1/(2*F/fs):12;  
% plotting in time domain %%%%%%%%%%
subplot(2,3,1)
plot (t,y_t)
title('CT Plot of Sinusoidal signal');
xlabel('Time t');
ylabel('CT Signal y(t)');
grid on;
subplot(2,3,2)
stem (n1*Ts1,y_n1);
hold on
plot (t,y_t,'g')
title('DT PlotT Oversampled');
xlabel('Time t');
ylabel('DT Signal');
grid on; 
subplot(2,3,3)
stem (n2*Ts2,y_n2);
hold on
plot (t,y_t,'g')
title('DT PlotT Undersampled');
xlabel('Time t');
ylabel('DT Signal');
grid on;  
% Computing frequency response of y_n and plotting %%%%%%%%%%
subplot(2,3,4) 
[Y_n,omega_n] = freqz(y_n1);
plot (omega_n*F/(2*pi),(abs(Y_n)))
title('Oversampling A sinusoidal signal in frequency domain');
xlabel('Frequency in Hz');
ylabel('Magnitude response Y') ;
grid on;
subplot(2,3,5)
[Y_n,omega_n] = freqz(y_n2);
plot (omega_n*F/(2*pi),(abs(Y_n)))
title('Oversampling A sinusoidal signal in frequency domain');
xlabel('Frequency in Hz');
ylabel('Magnitude response Y')
grid on; 