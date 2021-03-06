%Test of data linearization

% Ethan Hammond, Max Hoglund, Michael McDonald
% ENG 1101 L15 T6
% Wind Turbine Analysis

clear,clc
close all

%Import group data from text file
textRead='groupData.txt';
delimiterIn=',';
headerLinesIn=0;
groupData=importdata(textRead,delimiterIn,headerLinesIn);

velocity=groupData(:,2);
voltage=groupData(:,3);

% Get resistance value from user
resistance=987;

%Calculate pObserved
pObserved=(voltage.^2)/resistance;

figure
polyfitLogLog=polyfit(log(velocity),log(pObserved),1);
mLogLog=polyfitLogLog(1);
bLogLog=polyfitLogLog(2);
logLogFit=velocity.^mLogLog*exp(bLogLog);
loglog(velocity,pObserved,'ob', velocity,logLogFit,'-b');
title('loglog')