function [m2] = circleArea(r)
%Michael Mcdonald
%Calculates the area swept by the the blades

ft2m = 0.3048;
r = r*ft2m;
m2 = pi*r^2;
end