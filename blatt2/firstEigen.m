function [VVec] = firstEigen (mVar, VVec, CovMat)


	for i = 2:mVar

		WVec = CovMat*VVec;
		VVec = WVec/norm(WVec);

	end
	return
end
