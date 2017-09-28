function [m2] = circleArea(r)
%Calculates the area swept by the the blades

ft2m = 0.3048;
m2 = pi*r^2*ft2m^2;
end