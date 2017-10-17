%ICA 15-10
%Ethan Hammond
%Eng 1101 07A
%10-17-17

%Determine values of vectors used to calculate the properties of cones.

diam=[8;9;15;8;6];
ht=[14;7;9;8;11];
sg=[2.7;1.2;2.2;7.85;19.3];
rad=(diam(1:5)./2);
vol=(pi*(rad(1:5).^2)).*(ht(1:5)./3);
mass=(sg(1:5)./1000).*vol(1:5);
avgCone=mean(vol(1:5));
heaviestCone=max(mass(1:5));
lightestCone=min(mass(1:5));
[heaviestCone,I]=max(mass(:));
heavyHt=ht(I);
heavyDiam=diam(I);

fprintf('The heaviest cone was %f kg and has a height of %f meters, and a diameter of %f meters\n',heaviestCone, heavyHt, heavyDiam);