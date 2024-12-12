fs=899;
close all
clear all
fs=899;
load sample4-1.mat
l1=length(f2);
t=0:1/fs:l1/fs-1/fs;
f2=f2*1/(f2(50000));
% plot(t,f2)


    
f1=f1*1/(f1(50000));
f3=f3*1/(f3(50000));
f4=f4*1/(f4(50000));
f5=f5*1/(f5(50000));
f6=f6*1/(f6(50000));
f7=f7*1/(f7(50000));
f8=f8*1/(f8(50000));

   p(1,:)=polyfit(t(269700:end),f1(269700:end),1);
   p(2,:)=polyfit(t(269700:end),f2(269700:end),1);
   p(3,:)=polyfit(t(269700:end),f3(269700:end),1);
   p(4,:)=polyfit(t(269700:end),f4(269700:end),1);
   p(5,:)=polyfit(t(269700:end),f5(269700:end),1);
   p(6,:)=polyfit(t(269700:end),f6(269700:end),1);
   p(7,:)=polyfit(t(269700:end),f7(269700:end),1);
   p(8,:)=polyfit(t(269700:end),f8(269700:end),1);

sum(p(:,1))

p=p.*1e6;

% figure
% plot(t2,slope2(1,:));
% hold on
% plot(t2,slope2(2,:));
% plot(t2,slope2(3,:));
% plot(t2,slope2(4,:));
% plot(t2,slope2(5,:));
% plot(t2,slope2(6,:));
% plot(t2,slope2(7,:));
% plot(t2,slope2(8,:));
% legend("Freq1","Freq2","Freq3","Freq4","Freq5","Freq6","Freq7","Freq8")



