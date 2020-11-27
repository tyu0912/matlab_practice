%-- 10/14/2014 3:44 PM --%
% cd('C:/')
% cd('C:/users/ss/desktop/dropbox/')

[fn,pn]=uigetfile(fullfile('C:\Users\ss\Desktop\Dropbox\Tennison Lab Dropbox Folder\Matlab Demo','*.*'), 'multiselect','on','Select an image');
    I = imread(fullfile(pn,fn));

blue = I(:,:,3);
imshow(blue)
h = imdistline
pause(15)

prompt = {'Approximate Diameter Value:';'Sensitivity'};
dlg_title = 'Input';
num_lines = 1;
def = {'Click here';'Click here'};
answer = inputdlg(prompt,dlg_title,num_lines,def);
out1=str2num([answer{1,1}]);
out2=str2num([answer{2,1}]);

a = round((out/2)*0.8);
b = round((out/2)*1.2);

delete(h)

[centers, radii] = imfindcircles(blue,[a b],'ObjectPolarity','bright','Sensitivity',out2);

imshow(blue)
    h = viscircles(centers,radii)
    [a b] = size(centers);
    title('Circle Test','fontweight','bold','fontsize',20)
        test = ['Number of cells:' num2str(a) '.']
        text(12,100,test,'fontsize',16,'color','white')
    
