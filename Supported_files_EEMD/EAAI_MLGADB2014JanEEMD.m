tic
filename='MLG-ADB_Winddatahourlysampled2014JAN';
x=xlsread(filename);
plot(x);
Nstd=0.2;
NR=1;
MaxIter=100;
modos = myEEMD( x,Nstd,NR,MaxIter );
b=toc
figure
subplot(8,1,1);
plot(modos(1,:));
subplot(8,1,2);
plot(modos(2,:));
subplot(8,1,3);
plot(modos(3,:));
subplot(8,1,4);
plot(modos(4,:));
subplot(8,1,5);
plot(modos(5,:));
subplot(8,1,6);
plot(modos(6,:));
subplot(8,1,7);
plot(modos(7,:));
subplot(8,1,8);
plot(modos(8,:));
wnn_input=modos(2,:)+modos(3,:)+modos(4,:)+modos(5,:)+modos(6,:)+modos(7,:)+modos(8,:);
% wnn_input=zeros(1,720);
% for i=2:8
% wnn_input=wnn_input+modos(i,:);
% i=i+1;
% end
