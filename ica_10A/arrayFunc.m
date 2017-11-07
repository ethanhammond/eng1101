function [totalProfit,totalWood,totalLabor] = arrayFunc(inputArray,costWood,costLabor)
%ARRAYFUNC Determines total profit, total wood used, and total number of
%hours for the order

% Designed for scalability and editability in future.
% All data could be loaded from spreadsheet for even more realistic
% example.

allData=[145,130,95,55;12,9,7,5;750,520,340,177];

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

