%This segment of code copied from 06B inclass
clear
[nums,txt]=xlsread('GPSsmall.xlsx');
lat_vals=nums(:,1);
lon_vals=nums(:,2);
elv_vals=nums(:,3);
%end of copied section 

clc

val = input('Please enter an integer corresponding to the cell address for lat, lon, and elv\n');
lat_out = lat_vals(val);
lon_out = lon_vals(val);
elv_out = elv_vals(val);

fprintf('Latitude = %f, Longitude = %f, Elevation = %f\n',lat_out,lon_out,elv_out)

[minVal,maxVal,meanVal,medianVal,stdev] = vec_stats(lon_vals);

fprintf('Min: %f, Max: %f, Mean: %f, Median: %f, Stdev: %f\n',minVal,maxVal,meanVal,medianVal,stdev);

[meanVal1,minVal1,maxVal1] = vec_stats(lat_vals);
[meanVal2,minVal2,maxVal2] = vec_stats(lon_vals);
[meanVal3,minVal3,maxVal3] = vec_stats(elv_vals);

fprintf('Lat:     Mean: %f, Min: %f, Max: %f\n',meanVal1,minVal1,maxVal1);
fprintf('Lon:     Mean: %f, Min: %f, Max: %f\n',meanVal2,minVal2,maxVal2);
fprintf('Elv:     Mean: %f, Min: %f, Max: %f\n',meanVal3,minVal3,maxVal3);

%Begincopiedcodeforplotting
plot(lon_vals,lat_vals)
title('GPSDataCollectedinENG1101')
xlabel('Longitude(lon_vals)[degrees]');
ylabel('Latitude(Lat_vals)[degrees]')

figure
plot(lon_vals,lat_vals,'g^')
title('GPSDataCollectedinENG1101')
xlabel('Longitude(lon_vals)[degrees]');
ylabel('Latitude(Lat_vals)[degrees]')
%endcopiedcodeforplotting