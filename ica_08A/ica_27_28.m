% 10/24/2017
% Ethan Hammond
% 17-28

clc
clear
close all

A = input('Please enter the value for A\n');
B = input('Please enter the value for B\n');
C = input('Please enter the value for C\n');
D = input('Please enter the value for D\n');

theta=(0:1:720);
waveEquation = (A*cos(B.*deg2rad(theta)+C)+D);
plot(theta,waveEquation,(':r'),theta,cos(deg2rad(theta)),'-b');
title('Values of the wave equation');
xlabel('Degrees, (d) [deg]');
ylabel('Calculated values');
grid;
stringToPrint=sprintf('y=%0.0f*cos(%0.0f(theta)+%0.0f)+%0.0f',A,B,C,D);
gtext(stringToPrint);
