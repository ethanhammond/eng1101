% 10/24/2017
% Ethan Hammond
% 17-20

close all;
clear;
clc;

time=(.2:.2:1);
voltage=[75.9 103.8 114 117.8 119.2];

plot (time,voltage,'o');
title('Relation of voltage and time when charging a capacitor');
xlabel('Time (t) [seconds]');
ylabel('Voltage (v) [volts]');
axis(time);
grid on;