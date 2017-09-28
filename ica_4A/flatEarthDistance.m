function[flatEarthDistance] = flatEarthDistance(lat1,long1,lat2,long2)
%   Function flatEarthDistance determines the distance between two lat/long
%   coordinates.
%   User provides four value in the command window to get a distance back

dlat = lat2-lat1;
dlong = long2-long1;
avgLat=(lat1+lat2)/2;
y = 111.2*(dlat);
x = 111.2*(dlong)*cos(avgLat);

flatEarthDistance = sqrt((x^2)+(y^2));