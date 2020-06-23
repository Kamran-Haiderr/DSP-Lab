x=[2.2403 2.4908 2.2403];
y=[1 0.4 0.75];
s1=filter(b1,a1,x)
[k,w]=freqz(s1)
stem((w/pi),abs(k))
title('Filter & fft')
xlabel('w/pi')
ylabel('Magnitude')
figure
impz(x,y)
title('impz')
