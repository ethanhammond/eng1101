% 10/24/2017
% Ethan Hammond
% 17-21

clc
clear
close all

luminousFlux=[80 200 400 600 750 1250 1400];
incandescent=[16 nan 38 55 68 nan 105];
cfl=[nan 5 10 nan 18 27 33];
led=[1.7 3 6 9 12 nan nan];

plot (luminousFlux,incandescent, ('.b'), luminousFlux,cfl,('rs'), luminousFlux, led,('kd'))
legend('Incandescent Bulbs','CFL Bulbs','LED Bulbs');
title('Compared power cosumption of incandescent, CFL, and LED bulbs');
xlabel('Luminous Flux (LF) [lm]');
ylabel('Electrical Consumption (EC) [W]');
grid on;