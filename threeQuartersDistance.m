% Ethan Hammond
% Determine distance between the endpoints and the three quarters distance
% of two sets of coordinates
% 9/28/2017

x1 = input('Please enter x1: ');
y1 = input('Please enter y1: ');
x2 = input('Please enter x2: ');
y2 = input('Please enter y2: ');

[midx,midy] = midpointDistance(x1,y1,x2,y2);

[threeFourthX,threeFourthY] = midpointDistance(midx,midy,x2,y2);

shortDistanceX = x2-threeFourthX;
shortDistanceY = y2-threeFourthY;

shortDistance = sqrt(shortDistanceX^2 + shortDistanceY^2);
fprintf('%f\n',shortDistance);