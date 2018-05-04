

[fname, path] = uigetfile('.jpg','Open a face image for testing');
fname = strcat(path,fname);
im = imread(fname);

%%

Ftest = FeatureStatistical(im);

%%

load db.mat
Ftrain = db(:,1:2);
Ctrain = db(:,3);

for i = 1:size(Ftrain,1)
dist(i) = sum(abs(Ftrain(i) - Ftest));

end
m = find(dist==min(dist),1);
det_class = Ctrain(m);

msgbox(strcat('detected class=',num2str(det_class))); 




