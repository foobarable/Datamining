load("IntensityMat.mat");

[nDims,nVecs] = size(IntensityMat);

SquareDataMat = repmat(sum(IntensityMat.^2,1),nVecs,1);
DistMat = SquareDataMat - 2 * IntensityMat'*IntensityMat + SquareDataMat';

nSteps = 100;
alpha = 0.2;


SammonMap = sammon(IntensityMat',rand(nVecs,2),nSteps,'steps',alpha,DistMat)
save("-binary","SammonIntensityMat.mat","SammonMap");


load("SammonIntensityMat.mat");

plot(SammonMap(:,1),SammonMap(:,2),"or");

