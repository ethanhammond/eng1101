% Ethan Hammond, Max Hoglund, Michael McDonald
% ENG 1101 L15 T6
% Wind Turbine Analysis

clear,clc

%Import group data from text file
textRead='groupData.txt';
delimiterIn=',';
headerLinesIn=0;
groupData=importdata(textRead,delimiterIn,headerLinesIn);

velocity=groupData(:,2);
voltage=groupData(:,3);

% Get resistance value from user
resistance=input('Please enter the resistance value for your model in ohms:\n');

%Calculate pObserved
pObserved=(voltage.^2)/resistance;

figure
plot(pObserved,velocity, 'ob')

%Declare constants for pTheoretical
rho=1.2;                        %kg/m^3
Nb=.95;                         %unitless
Cp=.35;                         %unitless
Ng=.8;                          %unitless
A=.3048;                        %meters^2

%Get blade length from user
R_model=input('Please enter the radial length of the model blade in meters:\n');

%Calculate pTheoretical
pTheoretical=.5*rho*Nb*Cp*Ng*A.*velocity;


