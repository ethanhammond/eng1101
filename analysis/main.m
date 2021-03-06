% Ethan Hammond, Max Hoglund, Michael McDonald
% ENG 1101 L15 T6
% Wind Turbine Analysis

%Make resistance, R_model, h_model, R_

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
%Declare constants for pTheoretical
rho=1.2;                        %kg/m^3, air density
Nb=.95;                         %unitless, bearing efficiency
Cp=.35;                         %unitless, power coefficient
Ng=.8;                          %unitless, generator efficiency

% Model Dimensions
% Model built to 7/24th height and 6/11 diameter scale of typical Savonius
% style VAWT
R_model=0.06985;                %meters, VAWT model outer radius
H_model=0.1778;                 %meters, VAWT model blade height
%R_model=input('Please enter the radius of the blade (from center of VAWT to edge in meters) (group value was .06985)');
%H_model=input('Please enter the height of your VAWT blades in meters (group value was .1778)');
A_model=2*R_model*H_model;      %meters squared, VAWT swept area

%Full Dimensions
%Scale factor taken from diagram of savonius VAWT located here: http://www.fieldlines.com/index.php?topic=139867.0
R_full=1.76*R_model;
H_full=3.42857*H_model;
A_full=R_full*H_full;

%Calculate pTheoretical for VAWT
%Equation modified from Brusca, S., Lanzafame, R. & Messina, M. Int J Energy Environ Eng (2014) 5: 333. https://doi.org/10.1007/s40095-014-0129-x
pTheoretical=.5*rho*velocity.^3*2*R_model*H_model*Cp*Ng*Nb;

%Calculate pObserved
pObserved=(voltage.^2)/resistance;

%Find polyfit of pObserved
pFit=polyfit(log(velocity),log(pObserved),1);
mPobs=pFit(1);
bPobs=pFit(2);
pObsFit=velocity.^mPobs*exp(bPobs);

%Find polyfit of pTheoretical
polyfitTheor = polyfit(log(velocity),log(pTheoretical),1);
mTheor = polyfitTheor(1);
bTheor = polyfitTheor(2);

%Plot pObserved
figure
loglog(velocity,pObserved,'ob', velocity,pObsFit,'-b');
title('Relation of Wind Speed and Power Output for VAWT')
printObserved = sprintf('P = %fx^{%f}',bPobs,mPobs);
text(1.1,.0003,printObserved)
hold on;

%Plot pTheoretical
loglog(velocity, pTheoretical, 'r');
xlabel('Wind Speed (m/s) [velocity]');
ylabel('Power Generated (W) [pTheoretical, pObserved]');
legend('pObserved','pFitObserved','pTheoretical');
printTheoretical = sprintf('P = %fx^{%f}',bTheor,mTheor);
text(1.1,.015,printTheoretical)
hold off;

%Scaled Up Turbine Analysis

%Load Weather Data
weatherRaw = load('weather.txt');
time = weatherRaw(:,1)*60; %s
windSpeedMPH = weatherRaw(:,4); %mph
windSpeedMS = weatherRaw(:,4)*0.44704; %m/s

%Full Scale Model Calculations

% Adjust constant bPobs for scaled model
bFull=(bPobs*A_full)/A_model;

% Calculate time step
for i=2:1:length(time)
    %Note: This time step remains the same for all iterations
    dt=time(i)-time(i-1);
end

isRunning = 1;
fprintf('BEGIN ERROR LOG\n');
fprintf('Time(min)\tPower Generation Status (On/Off)\tReason\n');
for i = 1:1:length(weatherRaw)
  %isRunning Table
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
      
      % Calculate pScaled based on empirical function of pFit

  end
  if changeCheck ~= isRunning
      fprintf('%.0f %25s %35s\n',i,status,reason);
  end
  
end
fprintf('END ERROR LOG\n');