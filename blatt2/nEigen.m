function [EigenVectorMat] = nEigen (nEigenVecs, XdataMat)
	nDims = size(XdataMat,1);
	EigenVectorMat = zeros(nDims,nDims);
	CovMat = cov(XdataMat');

	if nEigenVecs > nDims
		nEigenVecs = nDims
	end

	for i = 1:nEigenVecs
		EigenVec = firstEigen(100,rand(nDims,1),CovMat);
		EigenVal = EigenVec' * CovMat * EigenVec;
		EigenVectorMat(:,i) = EigenVec;
		CovMat = CovMat - (EigenVal * EigenVec * EigenVec');
	end
	return
end
