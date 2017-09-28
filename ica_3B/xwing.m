% Ethan Hammond, Max Hoglund, Michael McDonald, Collin Granke
% Determine weight of x wring in newtons
% Team Number 6
% 9/25/2017
clc, clear;

%Constants
SG = 5.3; %dimensionless
G=8.829; %m/s^2
p_water = 1000; %kg/m3
V = 1300; %m^3

%Calculations
mass = SG * p_water * V; %kg
F=mass*G; %N
fprintf('\n The weight of the xwing is %.2f N ', F);