clc;
clear all;
close all;
x=[1,2,3,4];
xn=0:3;
h=[1,2,1,0];
hn=0:3;
figure;
subplot(3,1,1);


stem(xn,x);
xlabel('n');
ylabel('x[n]');
subplot(3,1,2);
stem(hn,h);
xlabel('n');
ylabel('h[n]');

%circular convolution
nx=length(x);
nh=length(h);
N=max(nx,nh);
newx=[x zeros(1,N-nx)];
newh=[h zeros(1,N-nh)];
x1=fft(newx);
H1=fft(newh);
Y=x1.*H1;
y=ifft(Y);
disp(the convoluted matrix:)
disp(y);
