% Program Name: LbForce.m
% Name: Ethan Hammond
% ENG1101 Section L15
% Group 6
% Date: September 21, 2017
% Program Description: This program takes the user input
% of the volume of a cylinder and determines its weight in lb-force
% on Jupiter's moon, Callisto.
% Inputs: Volume (m^3)
% Outputs: Weight (lb-force)

% Clear command window
clc

% Assign all givens to variables
specificGravity = 4.7;                          %dimensionless
gravityCallisto = 1.25;                         %m/s^2
densityWater = 1000;                            %kg/3^3

% Prompt user to input cylinder volume
cylinderVolume = input('Please enter the volume of the cylinder in cubic meters: ');

% Calculate density of rod based on specific gravity
rodDensity = specificGravity*densityWater;      %kg/m^3

% Determine mass
mass = rodDensity*cylinderVolume;               %kg

% Determine force on object from gravity
force = mass*gravityCallisto ;                  %newtons

% Convert newtons to lb-force
newtonsToLbForceConversionFactor = 0.224809;
lbForce = newtonsToLbForceConversionFactor*force; %lbforce

% Rounds lbForce up to next whole integer
lbForce = ceil(lbForce);

% Writes lbForce to the console
fprintf('%f',lbForce);
