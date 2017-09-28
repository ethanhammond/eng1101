function[kgm3]= pf3tokgm3(pf3)
% This function converts pounds per cubic foot to kg per cubic meter
conversionFactor = 16.02;
kgm3 = pf3*conversionFactor;
end