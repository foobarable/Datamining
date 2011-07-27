nDims = 2;
nVecs = 100;

TransMat = [0.25, 1.299; -0.433, 0.75];

XdataMat = TransMat*rand(nDims,nVecs);
%XdataMat = rand(nDims,nVecs);

meanVec = mean(XdataMat,2);
XdataMat = XdataMat - repmat(meanVec,1,nVecs);
%pause
maxVTCV = 0;
maxAlpha = 1;
CovMat = cov(XdataMat');

for alpha = 1:360

	DirVec = [cos(alpha),sin(alpha)]';

	vtcv = DirVec'*CovMat*DirVec;

		if vtcv > maxVTCV
			maxVTCV = vtcv;
			maxAlpha = alpha;
		end
end

EigenVec = firstEigen(1000,rand(nDims,1),CovMat)
[Val, Vec] = eig(CovMat)

hold on
plot(XdataMat(1,:),XdataMat(2,:),'*');
plot(0,0,"og");
plot(EigenVec(1),EigenVec(2),"xr");
plot(Val(:,1),Val(:,2),"xg");


%(180*acos(EigenVec(1)))/pi()
%maxVTCV
maxAlpha
