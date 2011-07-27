
nDims = 2;
nVecs = 100;
nDataSets = 1;



TransMat = [0.25, 1.299; -0.433, 0.75];

for i = 1:nDataSets
	XdataMat = TransMat*rand(nDims,nVecs);
	meanVec = mean(XdataMat,2);
	XdataMat = XdataMat - repmat(meanVec,1,nVecs);

	%plot(XdataMat(1,:),XdataMat(2,:),'x')

	EigenMat = nEigen(2,XdataMat)
end

