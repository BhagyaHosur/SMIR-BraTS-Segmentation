close all;
clear all;
clc;
warning off

a=rgb2gray(imread('brain.png'));
figure,imshow(a);
%%
imData = reshape(a,[],1);  %convert to an array(65536*1)
 imData = double(imData);  %convert from uint8 to double
  [IDX nn] = kmeans(imData,4); %perform kmeaans with two clusters
   imIDX = reshape(IDX,size(a)); %a (256*256) matrix of indexes
%%
figure,
 imshow(imIDX,[]),title('index image');
%%
figure,
   subplot(3,2,1),imshow(imIDX==1,[]);
   subplot(3,2,2),imshow(imIDX==2,[]);
   subplot(3,2,3),imshow(imIDX==3,[]);
   subplot(3,2,4),imshow(imIDX==4,[]);
%%
bw = (imIDX==2);
se=ones(5);
bw=imopen(bw,se);
bw=bwareaopen(bw,400);
figure,imshow(bw);
%%