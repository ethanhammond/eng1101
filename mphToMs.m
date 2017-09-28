function [ms] = mphToMs(mph)
%This function converts mph to m/s
metPerMile = 1609.34;
secPerHour = 3600;
ms = mph*(metPerMile)/(secPerHour);
end