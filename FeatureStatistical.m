function [F] = FeatureStatistical(im)

im = double(rgb2gray(im));

m = mean(mean(im));

s = std(std(im));

F = [m s];

end