function [totalVol1,totalVol2,difference] = examFunction(vol1,vol2)
%EXAMFUNCTION This function determines the total volume of each month of
%data and the difference between the two totals.
%   Returns flow data from lake oroville

totalVol1 = sum(vol1);
totalVol2 = sum(vol2);
difference = abs(totalVol2-totalVol1);

end

