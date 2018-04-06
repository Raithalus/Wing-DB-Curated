%% Clear
clear all; close all; format longg; format compact; clc;
%% 
WingIDS = imageDatastore('C:\Users\David Cheung\Desktop\Test','FileExtensions','.tif', 'LabelSource', 'foldernames','IncludeSubfolders', 1);
%%
% fixind = [] 105:146

for i = 1:length(WingIDS.Files)

if find(size(readimage(WingIDS, i), 3) == 4) == 1

	[test, fileinfo]= readimage(WingIDS,i);
	test(:,:,4) = [];
	test2(:,:,:,i) = test;
		
[filepath,name,ext] = fileparts(fileinfo.Filename);
name = [name, ext]




imwrite(test, name)
% 		figure, 
% 	imshow(test2(:,:,:,2))
end
% 		
% 	figure, 
% 	imshow(test2(:,:,:,2))
	

	
end
