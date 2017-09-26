function [distancexy] = distancexy(x1,x2,y1,y2)
%   Function distancexy determines the distance between two coordinate
%   points
%   User provides four value in the command window to get a distance back

distancexy = sqrt((y2^2-y1^2)/(x2^2-x1^2));
end

