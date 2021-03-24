clc;
clear all;
close all;
inp=imread('brain.png');

inp=imresize(inp,[256,256]);

if size (inp,3)>1
    
    inp = rgb2gray(inp);
    
end

figure;
imshow(inp); title('input image');
ou=imresize(inp,[256 256]);

t0 = 60;
th = t0+((max(inp(:))+min(inp(:)))./2);

for i= 1:1:size(inp,1)
    for j=1:1:size(inp,2)
        if inp (i,j)>th
            sout(i,j)=1;
        else
            sout(i,j)=0;
        end
    end
end
figure;
imshow(sout);