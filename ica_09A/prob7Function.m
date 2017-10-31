function [ newArray ] = prob7Function( inputArray )
%PROB7FUNCTION Reverses order of second column of input array    

    inputArray=[inputArray(1,:,end);inputArray(2,end:-1:1);inputArray(end,:,end)];
    newArray = inputArray;

end

