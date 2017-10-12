function [minVal,maxVal,meanVal,medianVal,stdevVal] = vec_stats(vector)
%vec_stats determines the min,max,mean,median, and stdev of a vector passed
%into it

minVal = min(vector);
maxVal = max(vector);
meanVal = mean(vector);
medianVal = median(vector);
stdevVal = std(vector);

end

