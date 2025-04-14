clc
clear all
tic
filename='hourlydata2024';
x=xlsread(filename);
plot(x);
Nstd=0.2;
NR=1;
MaxIter=100;
modos = myEEMD(x,Nstd,NR,MaxIter);
b=toc
figure
subplot(10,1,1);
plot(modos(1,:));
subplot(10,1,2);
plot(modos(2,:));
subplot(10,1,3);
plot(modos(3,:));
subplot(10,1,4);
plot(modos(4,:));
subplot(10,1,5);
plot(modos(5,:));
subplot(10,1,6);
plot(modos(6,:));
subplot(10,1,7);
plot(modos(7,:));
subplot(10,1,8);
plot(modos(8,:));
subplot(10,1,9);
plot(modos(9,:));
subplot(10,1,10);
plot(modos(10,:));
wnn_input=modos(2,:)+modos(3,:)+modos(4,:)+modos(5,:)+modos(6,:)+modos(7,:)+modos(8,:)+modos(9,:)+modos(10,:);
% wnn_input=zeros(1,3803);
% for i=28
% wnn_input=wnn_input+modos(i,);
% i=i+1;
% end