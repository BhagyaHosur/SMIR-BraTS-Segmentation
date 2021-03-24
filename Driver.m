% Driver function for FeatureExtraction_GLCM

srcFiles = dir('D:\FilteredHgg\*.png');
for i = 1 : length(srcFiles)
  filename = strcat('D:\FilteredHgg\',srcFiles(i).name);
   img=imread(filename);
   img=rgb2gray(img);
   GLCM2=graycomatrix(img,'Offset',[4 0;0 4]);
   stats=FeatureExtraction_GLCM(GLCM2,0);
   X=FeatureExtraction_GLCM(GLCM2,0);
    filename = 'glcmhgg.csv';
    xlsappend(filename,X);
    fprintf('\n\nDone\n\n');
end