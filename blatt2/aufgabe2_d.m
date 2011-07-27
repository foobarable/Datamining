
load("Hidden1.mat");

[nDim,nVal] = size(Xdata);
CovMat = cov(Xdata');

EigMat = nEigen(2,CovMat);
projection = EigMat' *Xdata;

plot(projection(2,:),projection(1,:),'ob');
