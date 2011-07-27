
load("Hidden1.mat");

[nDim,nVal] = size(Xdata);

count = 0;
for x = 1:nDim
	for y = x:nDim
	count = count + 1;
	subplot(8,8,count)
	hold on
	plot(Xdata(x,:),Xdata(y,:),'or');
	hold off
	end
end
