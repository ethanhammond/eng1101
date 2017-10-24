% 10/24/2017
% Ethan Hammond
% 17-23

clc
clear
close all

radius=(.2:.2:50);
c=1;
orbitalPeriod=sqrt(c.*radius.^3);

subplot(2,1,1);
plot(radius,orbitalPeriod);
title('Linear axial plot of the relationship between radius and orbital period');

subplot(2,1,2);
loglog(radius,orbitalPeriod);
title('Logarithmic axial plot of the relationship between radius and orbital period');