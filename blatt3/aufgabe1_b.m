path(path,"../functions");

load("EcoliRSCU.mat");
%load("BsubRSCU.mat");

[nVectorDim,nVectorVal] = size(Vectors);
[nLabelDim,nLabelVal] = size(Labels);


CovMat = cov(Vectors');
%bar(sort(diag(CovMat),'descend'));

EigenMat = nEigen(2,Vectors);

ProjMat = EigenMat'*Vectors;

NormGeneMat = ProjMat(:,(Labels==0));
PutGeneMat = ProjMat(:,(Labels==1));
HighGeneMat = ProjMat(:,(Labels==2));

hold on 
plot(NormGeneMat(1,:),NormGeneMat(2,:),'og');
plot(PutGeneMat(1,:),PutGeneMat(2,:),'ob');
plot(HighGeneMat(1,:),HighGeneMat(2,:),'or');
legend('normal Gene','putative Gene','highly expressed Gene','south');
hold off
