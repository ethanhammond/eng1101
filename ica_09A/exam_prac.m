% Exam 2 Practice
% Ethan Hammond

data = load('lake_oroville.dat');
indices = data(:,1);
december = data(:,2);
january = data(:,3);
february = data(:,4);
march = data(:,5);

numEntries = length(indices);

[totalVol1, totalVol2, difference] = examFunction(december,january);

maxJan = max(january);
minJan=min(january);

fprintf('The difference in flow between december and january is %0.0f, the minimum for January is %0.0f, and the max for January is %0.0f',difference, minJan, maxJan);

figure
plot(indices,january,'ob',indices,march,'om')
title('Flow rates of January and March')
xlabel('Time (t) [half days]')
ylabel('Flow (f) [cubic meters]')
legend('January data','March data')