clc;
clear all;
close all;
x=input('Enter input x(n):');
x_ind=input('Enter index of x(n):');
h=input('Enter input h(n):');
h_ind=input('Enter index of h(n):');
x_len=length(x);
h_len=length(h);
y_ind=min(x_ind)+min(h_ind):max(x_ind)+max(h_ind);
y=zeros(y_ind);
for i=1:x_len
 for j=1:h_len
 y(i+j-1)=y(i+j-1)+x(i)*h(j);
 end
end
disp(y);
figure();
subplot(3,1,1);
stem(x_ind,x);
xlabel('Time index');
ylabel('Amplitude');
title('Input x(n)');
subplot(3,1,2);
stem(h_ind,h);
xlabel('Time index');
ylabel('Amplitude');
title('Input h(n)');
subplot(3,1,3);
stem(y_ind,y);
xlabel('Time index');
ylabel('Amplitude');
title('Linear convolution');

