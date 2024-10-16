clc;
clear all;
close all;
%original signal
t=0:0.01:1;
fm=10;
y=sin(2*pi*fm*t);
figure;
subplot(2,2,1);
plot(t,y);
hold on;


stem(t,y,".");
xlabel("Time");
ylabel("Amplitude");
title("Orginal signal");
legend("Continuous","Discrete");
%under sampled
fs1=fm;
t1=0:1/fs1:1;
y1=sin(2*pi*fm*t1);
subplot(2,2,2);
plot(t1,y1);
hold on;
stem(t1,y1,'.');
xlabel("Time");
ylabel("Amplitude");
title("Undersampling");
legend("Continuous","Discrete");
%Nyquist sampling
fs2=3*fm;
t2=0:1/fs2:1;
y2=sin(2*pi*fm*t2);
subplot(2,2,3);
plot(t2,y2);
hold on;
stem(t2,y2,'.');
xlabel("Time");
ylabel("Amplitude");
title("Nyquist sampling");
legend("Continuous","Discrete");
