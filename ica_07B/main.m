%Ethan Hammond
%10/19/2017
%Convert farenheit to other degree systems with functions

degF = input('Please enter the temp in degrees F\n');

[degC] = tempCelcius(degF);
[degK]= tempKelvin(degC);

fprintf('Degrees F: %f, degrees C: %f, degrees K: %f.\n',degF,degC,degK)