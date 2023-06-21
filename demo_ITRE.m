clc
clear

%%  This Matlab file demomstrates an low-light image enhancement algorithm based on Yu Wang et al's paper:

% E-mail: yurowang@163.com
% For paper:ITRE: Low-light Image Enhancement Based onIllumination Transmission Ratio Estimatio
% Author: Yu Wang, all rights reserved
%% corresponding parameters in paper
afaexp=0.1;
RG=0;
lamudag=0.001;
%% ITRE algorithm
input = im2double(imread('image3.png')); 
% TR1000 is uniform tesselation of the unit-sphere we used by "NonLocalImageDehazing-Berman, D et al"
[ITRE, iniITR,refITR] = function_ITRE(input,afaexp,RG,lamudag );
figure(1);imshow(input);title('Input');
figure(2);imshow(ITRE);title('ITRE');
figure(3);imshow(iniITR);title('Initial ITR');
figure(4);imshow(refITR);title('Refined ITR');



