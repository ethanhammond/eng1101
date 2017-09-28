% Ethan Hammond, Max Hoglund, Michael McDonald
% Determine the power output of a wind turbine
% Team Number 6
% 9/28/2017

windspeed = 24;         %mph
airDensity = .84;       %pounds per cubic foot
cp = .4;                %coeff of performance
bladeRad = 15;          %feet

windspeedMetric = mphToMs(windspeed);
airDensityMetric = lbf3ToKgm3(airDensity);
bladeAreaMetric = circleArea(bladeRad);

power = .5*airDensityMetric*cp*bladeAreaMetric*windspeedMetric^3;

fprintf('The power output of the wind turbine is %f watts.\n', power)