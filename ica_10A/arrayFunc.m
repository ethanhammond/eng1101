function [totalProfit,totalWood,totalLabor] = arrayFunc(inputArray,costWood,costLabor)
%ARRAYFUNC Determines total profit, total wood used, and total number of
%hours for the order

% Designed for scalability and editability in future.
% All data could be loaded from spreadsheet for even more realistic
% example.

%Row one of the excel spreadsheet refers to square feet of wood per object
%Row two of the excel spreadsheet refers to the hours of labor per object
%Row three of the excel spreadhsset refers to the selling price of the
%object
%Dining tables, desks, coffee tables, end tables

excelData=xlsread('allData.xlsx');

allData=[excelData];

diningTableAmt=inputArray(1);
deskAmt=inputArray(2);
coffeeTableAmt=inputArray(3);
endTableAmt=inputArray(4);

diningTableWood=diningTableAmt*allData(1,1);
diningTableWoodCost=diningTableWood*costWood;
diningTableLabor=diningTableAmt*allData(2,1);
diningTableLaborCost=diningTableLabor*costLabor;
diningTableProfit=(allData(3,1)*diningTableAmt)-(diningTableWoodCost+diningTableLaborCost);

deskWood=deskAmt*allData(1,2);
deskWoodCost=deskWood*costWood;
deskLabor=deskAmt*allData(2,2);
deskLaborCost=deskLabor*costLabor;
deskProfit=(allData(3,2)*deskAmt)-(deskWoodCost+deskLaborCost);

coffeeTableWood=coffeeTableAmt*allData(1,3);
coffeeTableWoodCost=coffeeTableWood*costWood;
coffeeTableLabor=coffeeTableAmt*allData(2,3);
coffeeTableLaborCost=coffeeTableLabor*costLabor;
coffeeTableProfit=(allData(3,3)*coffeeTableAmt)-(coffeeTableWoodCost+coffeeTableLaborCost);

endTableWood=endTableAmt*allData(1,4);
endTableWoodCost=endTableWood*costWood;
endTableLabor=endTableAmt*allData(2,4);
endTableLaborCost=endTableLabor*costLabor;
endTableProfit=(allData(3,4)*endTableAmt)-(endTableWoodCost+endTableLaborCost);

totalProfit=diningTableProfit+deskProfit+coffeeTableProfit+endTableProfit;
totalWood=diningTableWood+deskWood+coffeeTableWood+endTableWood;
totalLabor=diningTableLabor+deskLabor+coffeeTableLabor+endTableLabor;

end

