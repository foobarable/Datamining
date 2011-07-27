
load("Hidden1.mat");

[nDim,nVal] = size(Xdata);


for curDim = 1:nDim
	curDim
	hist(Xdata(curDim,:),25)
	pause(3);
end
