clear
close all

load('Freq1.csv');    %loading first frequency data
dataCD_f2=Freq1(:,2:3);
dataC_f2=dataCD_f2(:,1);
dataD_f2=dataCD_f2(:,2);
Z=1:1:size(dataC_f2,1);
Z=Z';
total=size(Z,1);
C=dataC_f2;
D=dataD_f2;
c=C.^2;
d=D.^2;
f1=sqrt(c+d);           %computing magnitude

disp('Completed frequency');

load('Freq2.csv');    %loading first frequency data
dataCD_f2=Freq2(:,2:3);
dataC_f2=dataCD_f2(:,1);
dataD_f2=dataCD_f2(:,2);
Z=1:1:size(dataC_f2,1);
Z=Z';
total=size(Z,1);
C=dataC_f2;
D=dataD_f2;
c=C.^2;
d=D.^2;
f2=sqrt(c+d);    
disp('Completed frequency');


load('Freq3.csv');    %loading first frequency data
dataCD_f2=Freq3(:,2:3);
dataC_f2=dataCD_f2(:,1);
dataD_f2=dataCD_f2(:,2);
Z=1:1:size(dataC_f2,1);
Z=Z';
total=size(Z,1);
C=dataC_f2;
D=dataD_f2;
c=C.^2;
d=D.^2;
f3=sqrt(c+d);    
disp('Completed frequency');


load('Freq4.csv');    %loading first frequency data
dataCD_f2=Freq4(:,2:3);
dataC_f2=dataCD_f2(:,1);
dataD_f2=dataCD_f2(:,2);
Z=1:1:size(dataC_f2,1);
Z=Z';
total=size(Z,1);
C=dataC_f2;
D=dataD_f2;
c=C.^2;
d=D.^2;
f4=sqrt(c+d);    
disp('Completed frequency');


load('Freq5.csv');    %loading first frequency data
dataCD_f2=Freq5(:,2:3);
dataC_f2=dataCD_f2(:,1);
dataD_f2=dataCD_f2(:,2);
Z=1:1:size(dataC_f2,1);
Z=Z';
total=size(Z,1);
C=dataC_f2;
D=dataD_f2;
c=C.^2;
d=D.^2;
f5=sqrt(c+d);    
disp('Completed frequency');


load('Freq6.csv');    %loading first frequency data
dataCD_f2=Freq6(:,2:3);
dataC_f2=dataCD_f2(:,1);
dataD_f2=dataCD_f2(:,2);
Z=1:1:size(dataC_f2,1);
Z=Z';
total=size(Z,1);
C=dataC_f2;
D=dataD_f2;
c=C.^2;
d=D.^2;
f6=sqrt(c+d);    
disp('Completed frequency');


load('Freq7.csv');    %loading first frequency data
dataCD_f2=Freq7(:,2:3);
dataC_f2=dataCD_f2(:,1);
dataD_f2=dataCD_f2(:,2);
Z=1:1:size(dataC_f2,1);
Z=Z';
total=size(Z,1);
C=dataC_f2;
D=dataD_f2;
c=C.^2;
d=D.^2;
f7=sqrt(c+d);    
disp('Completed frequency');


load('Freq8.csv');    %loading first frequency data
dataCD_f2=Freq8(:,2:3);
dataC_f2=dataCD_f2(:,1);
dataD_f2=dataCD_f2(:,2);
Z=1:1:size(dataC_f2,1);
Z=Z';
total=size(Z,1);
C=dataC_f2;
D=dataD_f2;
c=C.^2;
d=D.^2;
f8=sqrt(c+d);    
disp('Completed frequency');


% baseline_signal=smooth(z2,800); %computing baseline using a moving average
% 
ml1 = min([length(f1) length(f2) length(f3) length(f4) length(f5) length(f6) length(f7) length(f8)]);
ff1 = f1(1:ml1);
ff2 = f2(1:ml1);
ff3 = f3(1:ml1);
ff4 = f4(1:ml1);
ff5 = f5(1:ml1);
ff6 = f6(1:ml1);
ff7 = f7(1:ml1);
ff8 = f8(1:ml1); % truncating all the frequencies to the same length

szoff = ml1;
secs = linspace(0,szoff/899,szoff);
plot(secs,ff1,secs,ff2,secs,ff3,secs,ff4,secs,ff5,secs,ff6,secs,ff7,secs,ff8);
legend('10kHz','50kHz','100kHz','250kHz','500kHz','1MHz','2MHz','3MHz');

save sample1-1.mat

%%%%%%%%
title ('Sample 1-1','FontSize',20,'FontWeight','bold');
xlabel('Time (s)','FontSize',18,'FontWeight','bold');
ylabel('Voltage (V)','FontSize',18,'FontWeight','bold');
ax=gca;
ax.FontSize = 20;
ax.FontWeight ='bold';
