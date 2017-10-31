function [ newArray ] = prob6Function( inputArray )
%PROB6FUNCTION Takes corners of input array and sets to new array

    inputArray(1,1)=99;
    inputArray(1,end)=99;
    inputArray(end,1)=99;
    inputArray(end,end)=99;
    
    newArray = inputArray;

end

