function[kgm3]= lbf3ToKgm3(lbf3)
% Ethan Hammond
% This function converts pounds per cubic foot to kg per cubic meter
conversionFactor = 16.02;
kgm3 = lbf3*conversionFactor;
end