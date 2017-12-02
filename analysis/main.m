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
%resistance=input('Please enter the resistance value for your model in ohms:\n');


%Prototype Analysis

%Calculate pObserved
pObserved=(voltage.^2)/resistance;

%Find polyfit of pObserved
pO = polyfit(log10(velocity),log10(pObserved),1);
mO = pO(1);
bO = 10^pO(2);
pFit = bO.*velocity.^mO;

%Plot experimental data
figure
hold on;
loglog(velocity, pObserved, 'ob')
loglog(velocity, pFit, 'm');
title('Wind Speed and Measured Power');
xlabel('Wind Speed (m/s) [velocity]');
ylabel('Power Generated (W) [pObserved]');
legend('pObserved','pFit');
printStuff = sprintf('P = %fx^{%f}',bO,mO);
gtext(printStuff)
hold off;

%Declare constants for pTheoretical
rho=1.2;                        %kg/m^3, air density
Nb=.95;                         %unitless, bearing efficiency
Cp=.35;                         %unitless, power coefficient
Ng=.8;                          %unitless, generator efficiency
R_model=0.06985;                %meters, VAWT model radius
h=0.1778;                       %meters, VAWT model height

%Get blade length from user
%R_model=input('Please enter the radial length of the model blade in meters:\n');

%Get blade height from user
%h=input('Please enter the height of the VAWT blade in meters:\n');

%Calculate pTheoretical for VAWT
%Equation taken from Brusca, S., Lanzafame, R. & Messina, M. Int J Energy Environ Eng (2014) 5: 333. https://doi.org/10.1007/s40095-014-0129-x
pTheoretical=.5*rho*velocity.^3*2*R_model*h*Cp;

%Find polyfit of pTheoretical
pT = polyfit(log10(velocity),log10(pTheoretical),1);
mT = pT(1);
bT = 10^pT(2);
hold on;

%Plot theoretical data
loglog(velocity, pTheoretical, 'r');
title('Wind Speed and Max Power');
xlabel('Wind Speed (m/s) [velocity]');
ylabel('Power Generated (W) [pTheoretical]');
legend('pObserved','pFit','pTheoretical');
printStuff = sprintf('P = %fx^{%f}',bT,mT);
gtext(printStuff)
hold off;



%Scale Up Turbine Analysis

%Load Weather Data
weatherRaw = load('weather.txt');
time = weatherRaw(:,1)*60; %s
windSpeedMPH = weatherRaw(:,4); %mph
windSpeedMS = weatherRaw(:,4)*0.44704; %m/s

%Full Scale Model Calculations
%R_full=input('Please enter the radial length of the full scale blade in meters:\n');

%isRunning Table
isRunning = 1;
fprintf('BEGIN ERROR LOG\n');
fprintf('Time(min)\tPower Generation Status (On/Off)\tReason\n');
for i = 1:1:length(weatherRaw)
  changeCheck = isRunning;
  if windSpeedMPH(i) > 45
      isRunning = 0;
      status = 'OFF';
      reason = 'Speed too high';
  elseif windSpeedMPH(i) < 10
      isRunning = 0;
      status = 'OFF';
      reason = 'Speed too low';
  else
      isRunning = 1;
      status = 'ON';
      reason = 'Speed is within range';
  end
  if changeCheck ~= isRunning
      fprintf('%.0f %25s %35s\n',i,status,reason);
  end
end
fprintf('END ERROR LOG\n');

for i=2:1:length(time)
    dt=time(i)-time(i-1);
end
