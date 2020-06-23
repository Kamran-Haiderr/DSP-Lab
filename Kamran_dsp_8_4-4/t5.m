n1=0:6;
n2=0:6;
N=length(n1)
g=sin(2*pi*0.5*n1)     
h=sin(2*pi*0.3*n2)
y1=cconv(g,h,N)
Y1=fft(y1)
 
 
G=fft(g)
H=fft(h)
Y2=G.*H
 
subplot 211
stem(((2*pi*n1)/6),abs(Y1))
title('Circ-convolvedd in t dom')
xlabel('w/pi')
ylabel('Amplitude')
 
subplot 212
stem(((2*pi*n2)/6),abs(Y2))
title('Freq dom multiplied')
xlabel('w/pi')
ylabel('Amplitude')
max(abs(Y2-Y1))
