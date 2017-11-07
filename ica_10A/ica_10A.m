% 10A
% Ethan Hammond
% Solve system of equations using back divide.

% X-Z=6
% 2X-Y+3Z=3
% 3X+5Z=35
% Finds X,Y,Z

a=[1,0,-1;2,-1,3,;3,0,5];   %coefficients
c=[6;3;35];                 %coefficient answers

b=a\c;                      %missing coefficients
