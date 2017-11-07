% Exam 2
% Ethan Hammond
% Engineering 1101 L15 Team 6
% 11/2/2017

clc
clear

data = load('Exam_GPS2.csv'); %loads gps data from .csv
lat = data(:,1);
lon = data(:,2);
elv = data(:,3);

figure
plot(lon, lat, '.b')
title('Longitude and latitude values taken from GPS data')
xlabel('Longitude values (lon) [degrees]')
ylabel('Latitude values (lat) [degrees]')

[medianElv,meanElv,maxElv] = erhammon_function_A4(elv); %calls function to determine median, mean, and max

fprintf('The median of the elevation values is: %0.3f.\n The mean of the elevation values is: %0.3f,\n and the maximum elevation is: %0.3f.\n All values are formatted to 6 significant figures.\n',medianElv, meanElv, maxElv)