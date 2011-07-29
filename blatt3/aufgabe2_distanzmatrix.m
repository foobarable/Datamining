path(path,"../functions");

load("EcoliRSCU.mat");
%load("BsubRSCU.mat");

[nVectorDim,nVectorVal] = size(Vectors);
[nLabelDim,nLabelVal] = size(Labels);


DistMat = zeros(nVectorVal);
for i = 1:nVectorVal
	for j = i:nVectorVal
		DistMat(i,j) = norm(Vectors(:,i)-Vectors(:,j),1);
	end
end

save("-binary","distmat.mat","DistMat")
