clc;
close all;
clear all;
x=[2 1 2 1];
x=x(:,end:-1:1);
 %% h[ 1 2 1 2]
 h=[1 2 3 4]
 for i=1:length(x)
     x=[x(end) x(1:end-1)]
     h1=h;
