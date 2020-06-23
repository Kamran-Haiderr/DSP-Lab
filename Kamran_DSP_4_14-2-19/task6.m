n=0:299;
x=cos((20*pi*n)/250)+cos((200*pi*n)/250);
a1=[1];
b1=[0.5 0.27 0.77];
b2=[0.45 0.5 0.45];
a2=[1 -0.53 +0.46];
s1=filter(b1,a1,x)
[k,w]=freqz(s1)
subplot(211)
stem((w/pi),abs(k))
title('FIR System 1')
xlabel('w/pi')
ylabel('Magnitude')
s2=filter(b2,a2,x)
[K1,W1]=freqz(s2)
subplot(212)
stem((W1/pi),abs(K1))
title('IIR System 2')
xlabel('w/pi')
ylabel('Magnitude')