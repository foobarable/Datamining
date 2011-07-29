load("Hidden2.mat");

[nDims,nVecs] = size(Xdata);

SquareDataMat = repmat(sum(Xdata.^2,1),nVecs,1);
DistMat = SquareDataMat - 2 * Xdata'*Xdata + SquareDataMat';

nSteps = 100;
alpha = 0.2;


SammonMap = sammon(Xdata',rand(nVecs,2),nSteps,'steps',alpha,DistMat)
save("-binary","SammonMap2.mat","SammonMap");


load("SammonMap2.mat");

plot(SammonMap(:,1),SammonMap(:,2),"or");

