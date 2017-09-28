% Ethan Hammond, Max Hoglund, Michael McDonald, Collin Granke
% Determine power output of wind turbine
% Team Number 6
% 9/28/2017

windspeed = 24; %mph
airDensity = .84; %pounds per cubic foot
cp = .4; %coeff of performance
bladeRad = 15; %feet

windspeedMetric = mphToMs(windspeed);
airDensityMetric = pf3tokgm3(airDensity);
bladeAreaMetric = circleArea(bladeRad);

power = .5*airDensityMetric*cp*bladeAreaMetric*windspeedMetric^3;

fprintf('%f\n', power)