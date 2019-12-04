t = -5:0.1:5; A = 5; W = 2; c = 3; s =0;
x = A*cos(W*t+3.14/2); #sine wave
subplot(3,3,1)
plot(t,x) 
xlabel('time');
ylabel('amplitude');
title('sinosoidal signal');
u = (t>=0);	#unit step signal
subplot(3,3,2)
plot(t,u) 
ylim ([-6, 6]);
xlabel('time');
ylabel('amplitude');
title('unit step signal');
r = (t.*u);	#ramp signal
subplot(3,3,3)
plot(t,r) 
ylim ([-6, 6]);
xlabel('time');
ylabel('amplitude');
title('ramp signal');
e = c.*exp(A*t);	#exponential signal
subplot(3,3,4)
plot(t,e)
xlabel('time');
ylabel('amplitude');
title('exponential signal');
if (t>0)		#signum signal
  s = 1;
elseif (t<0)
  s = -1;
endif    
subplot(3,3,5)
plot(t,s)
ylim ([-6, 6]);
xlabel('time');
ylabel('amplitude');
title('signum signal');
si = sin(t)./t;		#sinc function	
subplot(3,3,6)
plot(t,si)
xlabel('time');
ylabel('amplitude');
title('sinc signal');
re =  (abs(t)<=1/2);		#rectangular signal
subplot(3,3,7)
plot(t,re)
ylim ([-6, 6]);
xlabel('time');
ylabel('amplitude');
title('rectangular signal');
tr = 1 - abs(t)/0.5;		#triangular signal
subplot(3,3,8)
plot(t,tr)
xlabel('time');
ylabel('amplitude');
title('triangular signal');
g = exp(-A*((t).^2));		#gaussian distribution
subplot(3,3,9)
plot(t,g)
xlabel('time');
ylabel('amplitude');
title('gaussian signal');
