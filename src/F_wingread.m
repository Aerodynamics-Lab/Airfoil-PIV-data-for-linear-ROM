%% Function to file for wing
%  Created by T.Nonomura 2019.02.23
%  you can change bar length at variable "ndigits"
%  INPUT  : file name : file is generated by 
%  http://airfoiltools.com/airfoil/naca4digit?MNaca4DigitForm%5Bcamber%5D=0&MNaca4DigitForm%5Bposition%5D=0&MNaca4DigitForm%5Bthick%5D=15&MNaca4DigitForm%5BnumPoints%5D=200&MNaca4DigitForm%5BcosSpace%5D=0&MNaca4DigitForm%5BcosSpace%5D=1&MNaca4DigitForm%5BcloseTe%5D=0&yt0=Plot
%           
%  OUTPUT : display the progress bar in the command window

%% Main Code
function [x,y] = F_wingread(filename)
   x=[];
   y=[];
   fid = fopen(filename);
   while ~feof(fid)
    xtmp = fscanf(fid,'%f %f');
   end
   size(xtmp);
   xtmp=reshape(xtmp',2,size(xtmp,1)/2);
   xtmp=xtmp';
   x=xtmp(:,1);
   y=xtmp(:,2);
   %x
   fclose all;   %% �ǉ�
end