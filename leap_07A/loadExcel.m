clear
[nums,txt]=xlsread("Mistakes!.xlsx");
dates=nums(:,1);
snowfall=nums(:,2);
onGround=nums(:,3);
month=nums(:,4);
season=nums(:,5);

minGround = min(onGround);
maxGround = max(onGround);

%Begincopiedcodeforplotting
plot(onGround,dates)
title('Total Snowfall On Ground Throughout December')
xlabel('Snowfall(onGround)[inches]');
ylabel('Date(dates)[days]')

