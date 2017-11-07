% 10A
% Ethan Hammond

a=input('Please enter the amount of dining tables in the order\n');
b=input('Please enter the amount of desks in the order\n');
c=input('Please enter the amount of coffee tables in the order\n');
d=input('Please enter the amount of end tables in the order\n');

inputArray=[a,b,c,d];

costWood = 2.25; %$ per sq ft
costLabor = 8.50; %$ per hour

[totalProfit,totalWood,totalLabor] = arrayFunc(inputArray,costWood,costLabor);