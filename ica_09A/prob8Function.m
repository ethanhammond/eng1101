function [ anyVal,allVal ] = prob8Function( inputArray )
%PROB8FUNCTION

anyVal=any(any(inputArray>2));
allVal=all(all(inputArray>2));
    
end

