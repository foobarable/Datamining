
load("Hidden1.mat");

[nDim,nVal] = size(Xdata);
CovMat = cov(Xdata');
bar(sort(diag(CovMat),'descend'));
