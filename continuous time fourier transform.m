clc;
t = -2:0.01:2;
k = 0;
for i = 0:401
    if i > 0 && i < 402
        x(i) = 1;
    if i == 0 && i == 402
        x(i) = 0;
    end
    end
end
 
%FIRST
for w=-5:.01:5
 k=k+1;
 X(k)=trapz(t,exp(-j*2*pi*w*t));
 end
w=-5:.01:5;
subplot(2,3,1)
plot(t,x);
title("Given Signal")
subplot(2,3,2)
plot(w,abs(X))
title("Amplitude Spectrum")
subplot(2,3,3)
z = angle(X);
plot(w,z)
title("Phase Spectrum")
%SECOND
N=250;
ts=.0002;
t=[0:N-1]*ts;
x=cos(2*pi*100*t)+cos(2*pi*500*t);
subplot(2,3,4)
plot(t,x);
title("Given Signal")
k=0;
for w=0:1:1000
    k=k+1;
    X(k)=trapz(t,x.*exp(-j*2*pi*w*t));
end
w= 0:1000;
subplot(2,3,5)
plot(w,abs(X))
title("Amplitude Spectrum")
subplot(2,3,6)
z = angle(X);
plot(w,z)
title("Phase Spectrum")
