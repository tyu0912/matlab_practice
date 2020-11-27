
[fn,pn]=uigetfile(fullfile('C:\Users\ss\Desktop\Dropbox\Tennison Lab Dropbox Folder\EVMS\Pictures','*.*'), 'multiselect','on','Select an image');
    Blue = imread(fullfile(pn,fn));
    
[an,bn]=uigetfile(fullfile('C:\Users\ss\Desktop\Dropbox\Tennison Lab Dropbox Folder\EVMS\Pictures','*.*'), 'multiselect','on','Select an image');
    Red = imread(fullfile(bn,an)); 
    
cd(bn)
    
bluelayer = Blue(:,:,3);
redlayer = Red(:,:,1);
[x y] = size(bluelayer);
greenlayer = zeros(x,y);
rgbImage = cat(3, redlayer,greenlayer, bluelayer);

figure;
subplot(3,1,1);
imshow(Blue);

subplot(3,1,2);
imshow(Red);

subplot(3,1,3);
imshow(rgbImage);

prompt = {'What do you want to name the file'};
dlg_title = 'Input';
num_lines = 1;
def = {'Click here'};
name = inputdlg(prompt,dlg_title,num_lines,def);

imwrite(rbgImage,[name,'.jpg'])

%a = imresize(imresize(im,1/2),2)
%imwrite(rgbImage,'test.jpg','jpg')