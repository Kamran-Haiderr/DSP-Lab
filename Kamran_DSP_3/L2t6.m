n=-15:20;
x=sin(2*pi*0.25*n);
subplot(511)
stem(x);
title('Original Signal')
x1=upsample(x,3);
subplot(512)
stem(x1);
title('Upsampled Signal')
x2=downsample(x,3);
subplot(513)
stem(x2);
title('Downsampled Signal')
x3=upsample(x2,3);
subplot(514)
stem(x3);
title('Down then upsampled Signal')
x4=downsample(x1,3);
subplot(515)
stem(x4);
title('Up then Downsampled Signal')