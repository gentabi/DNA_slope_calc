close all
clear all

fs=899;
load sample2-1.mat
l1=length(f2);
t=0:1/fs:l1/fs-1/fs;


% szoff = ml1;
% secs = linspace(0,szoff/899,szoff);
%  plot(t,f1*1e3,t,f2*1e3,t,f3*1e3,t,f4*1e3,t,f5*1e3,t,f6*1e3,t,f7*1e3,t,f8*1e3,'LineWidth',1.5);
%  %plot(t,f1,t,f2,t,f3,t,f4,t,f5,t,f6,t,f7,t,f8,'LineWidth',1);
%  legend('10kHz','50kHz','100kHz','250kHz','500kHz','1MHz','2MHz','3MHz');
% ax=gca;
% ax.FontSize = 15;
% ax.FontWeight = 'bold';
% ax.LineWidth = 1;
% ylabel('Voltage (mV)', 'FontSize',22,'FontWeight','bold');
% xlabel('Time(s)','FontSize',22,'FontWeight','bold');




% plot(t,f2)


    
f1=f1*1/(f1(50000));
f2=f2*1/(f2(50000));
f3=f3*1/(f3(50000));
f4=f4*1/(f4(50000));
f5=f5*1/(f5(50000));
f6=f6*1/(f6(50000));
f7=f7*1/(f7(50000));
f8=f8*1/(f8(50000));

f1_last = f1 (269700:end);
f2_last = f2 (269700:end);
f3_last = f3 (269700:end);
f4_last = f4 (269700:end);
f5_last = f5 (269700:end);
f6_last = f6 (269700:end);
f7_last = f7 (269700:end);
f8_last = f8 (269700:end);
t_last = t(269700:end);


 szoff = ml1;
 secs = linspace(0,szoff/899,szoff);
  plot(t,f1*1e3,t,f2*1e3,t,f3*1e3,t,f4*1e3,t,f5*1e3,t,f6*1e3,t,f7*1e3,t,f8*1e3,'LineWidth',1.5);
%   plot(t_last,f1_last,t_last,f2_last,t_last,f3_last,t_last,f4_last,t_last,f5_last,t_last,f6_last,t_last,f7_last,t_last,f8_last,'LineWidth',1);
  legend('10kHz','50kHz','100kHz','250kHz','500kHz','1MHz','2MHz','3MHz');
 ax=gca;
 ax.FontSize = 18;
 ax.FontWeight = 'bold';
 ax.LineWidth = 1;
 ylabel('Normalized Response', 'FontSize',22,'FontWeight','bold');
 xlabel('Time(s)','FontSize',22,'FontWeight','bold');
 


hold on

   p(1,:)=polyfit(t(269700:end),f1(269700:end),1);
   p(2,:)=polyfit(t(269700:end),f2(269700:end),1);
   p(3,:)=polyfit(t(269700:end),f3(269700:end),1);
   p(4,:)=polyfit(t(269700:end),f4(269700:end),1);
   p(5,:)=polyfit(t(269700:end),f5(269700:end),1);
   p(6,:)=polyfit(t(269700:end),f6(269700:end),1);
   p(7,:)=polyfit(t(269700:end),f7(269700:end),1);
   p(8,:)=polyfit(t(269700:end),f8(269700:end),1);


 fit1 = polyval(p(1,:),t(269700:end));
 fit2 = polyval(p(2,:),t(269700:end));
 fit3 = polyval(p(3,:),t(269700:end));
 fit4 = polyval(p(4,:),t(269700:end));
 fit5 = polyval(p(5,:),t(269700:end));
 fit6 = polyval(p(6,:),t(269700:end));
 fit7 = polyval(p(7,:),t(269700:end));
 fit8 = polyval(p(8,:),t(269700:end));



% 
%    plot(t_last,fit1,t_last,fit2,t_last,fit3,t_last,fit4,t_last,fit5,t_last,fit6,t_last,fit7,t_last,fit8,'LineWidth',1);
%  legend('10kHz','50kHz','100kHz','250kHz','500kHz','1MHz','2MHz','3MHz');
%  ax=gca;
%  ax.FontSize = 15;
%  ax.FontWeight = 'bold';
%  ax.LineWidth = 1;
%  ylabel('Normalized Response', 'FontSize',22,'FontWeight','bold');
% xlabel('Time(s)','FontSize',22,'FontWeight','bold');
  