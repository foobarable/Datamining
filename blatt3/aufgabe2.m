load("/c1/scratch/ralph/distmat.mat")

nVecs = size(DistMat,1);

SquareDistMat = DistMat.^2;
RowMeanVec = sum (SquareDistMat,1)./nVecs;
ColMeanVec = sum (SquareDistMat,2)./nVecs;
meanValue = (sum(sum(SquareDistMat,1),2))/nVecs^2;

RowMeanMat = repmat(RowMeanVec,nVecs);
ColMeanMat = repmat(ColMeanVec,nVecs);

GramMat = -1/2 * (SquareDistMat - RowMeanMat - ColMeanMat + meanValue);
