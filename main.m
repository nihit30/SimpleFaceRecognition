close all;clear;clc;

%% Taking inputs
 
% I = rgb2gray(imread('database/1.jpg'));
% figure;
% imshow(I);
%title('INPUT FACE');

[fname, path] = uigetfile('.jpg','Open a face as input for training');
fname = strcat(path,fname);
im = imread(fname);
c = input('Enter the class of this image : ');

%% Feature extraction %%

F = FeatureStatistical(im);

try 
    load db;
    F = [F c];
    db = [db;F];
    save db.mat db
catch
    db = [F c];         % m s c
    save db.mat db 
end


% points = detectSURFFeatures(I);
% [SURFfeatures, valid_points] = extractFeatures(I, points);
% [HOGfeatures,hogVisualization] = extractHOGFeatures(I);

%% UI %%
 
 %[fname, path] = uigetfile('Open a face as input for training','.jpg');
 
%fname = strcat(path,fname);
 %im = imread(fname);
 