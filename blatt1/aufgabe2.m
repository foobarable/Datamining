#Aufgabe2:Zufallsdatene

nDims = 2;
nDataSets = 10;
%NVecsVec = [100,1000,10000];
NVecsVec = [100];


for j = 1:length(NVecsVec)


	for i = 1:nDataSets

		XDataMat = rand(nDims,NVecsVec(j));
		meanVec = mean(XDataMat,2);
		XDataMat = XDataMat - repmat(meanVec,1,NVecsVec(j));
		AngleVarianceMat = [[1:360];zeros(1,360)];

		maxVar = 0;
		maxAngle = 0;

		for alphaAngle = 1:360;

			RotMat = [ cos(alphaAngle) sin(alphaAngle); -sin(alphaAngle) cos(alphaAngle) ];
			RotDataMat = RotMat*XDataMat;
			xVar = var(RotDataMat(:,1));
			AngleVarianceMat(2,alphaAngle) = xVar;	
			if xVar > maxVar
				maxVar = xVar;
				maxAngle = alphaAngle;
			end

		end
		plot(AngleVarianceMat(1,:),AngleVarianceMat(2,:))
		pause(1)
		
		maxAngle
		maxVar
		AngleVarianceMat;
	%plot(XDataMat(1,:),XDataMat(2,:),'x')
	end

end


