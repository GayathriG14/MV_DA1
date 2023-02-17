% Histogram Equalization
%  image = imread('harry.png');
%  I= imread('harry.png');
%  figure
%  subplot(2,2,1)
%  imshow(I)
%  subplot(2,2,2)
%  imhist(I)
%  
% J = histeq(image);
% figure
% subplot(2,2,3)
% imshow(J)
% subplot(2,2,4)
% imhist(J)
% nscore=niqe(I)
% nscore1=niqe(J)
% ------------------

% Contrast Stretching:
%  I = imread('harry.png');
%  figure
%  imshow(I) 
%  imhist(I)
%  J = imadjust(I,stretchlim(I),[]);
%  figure
%  imshow(J)
%  imhist(J)
%  nscore=niqe(I)
%  nscore1=niqe(J)
% ------------------

% Gray Level Slicing
%  clc;
%  clear all;
%  i=imread('harry.png');
%  j=double(i);
%  k=double(i);
%  [row,col]=size(j);
%  T1=100 %Lowest threshold value 
%  T2=200 % Highest threshold value
%  for x=1:row
%  for y=1:col
%  if((j(x,y)>T1) && (j(x,y)<T2))
%  j(x,y)=i(x,y);
%  k(x,y)=255;
%  else
%  j(x,y)=0;
%  k(x,y)=0;
%  end 
%  end
%  end
%  subplot(311), imshow(i), title('Original image')
%  subplot(312), imshow(uint8(j)), title('Graylevel slicing with background') 
% subplot(313), imshow(uint8(k)), title('Graylevel slicing without background')
% nscore1=niqe(i)
% nscore2=niqe(uint8(j))
% nscore3=niqe(uint8(k))
% ------------------

% Bit Plane Slicing
% clc
% clear all
% close all
% warning off;
% A=imread('cameraman.tif');
% A=double(A);
% B=bitget(A,1); subplot(2,4,1);imshow((B));title('Bit plane 1');
% B=bitget(A,2); subplot(2,4,2);imshow(B);title('Bit plane 2'); 
% B=bitget(A,3); subplot(2,4,3);imshow(B);title('Bit plane 3'); 
% B=bitget(A,4); subplot(2,4,4);imshow(B);title('Bit plane 4'); 
% B=bitget(A,5); subplot(2,4,5);imshow(B);title('Bit plane 5'); 
% B=bitget(A,6); subplot(2,4,6);imshow(B);title('Bit plane 6'); 
% B=bitget(A,7); subplot(2,4,7);imshow(B);title('Bit plane 7'); 
% B=bitget(A,8);subplot(2,4,8);imshow(B);title('Bit plane 8');
% ------------------


% Sharpening the image
% x=imread('harry.png'); figure;
% imshow(x); title('Original Image'); 
% I = imgaussfilt(x,40); 
% figure();
% imshow(I);
% title('Smoothened Image');
% I_sharpen=imsharpen(x,'amount',3);
% figure;
% imshow(I_sharpen);
% title('Sharpened Image');
% nscore1=niqe(x)
% nscore2=niqe(I)
% nscore3=niqe(I_sharpen)

% Quality of the image
% clc
%   A = imread('harry.png');
%   Anoise = imnoise(A,'Gaussian',0,0.05);
%   Ablur = imgaussfilt(A,2);
%   score = piqe(A);
%   score_noise = niqe(Anoise);
%   score_blur = niqe(Ablur);
%   figure
%   montage({A,Anoise,Ablur},'Size',[1 3])
%  title({['Original Image: NIQE score = ', num2str(score),'    |    Noisy Image: NIQE score = ', num2str(score_noise),'    ' '|    Blurred Image: NIQE score = ', num2str(score_blur)]}, 'FontSize',12)

% Image Inversion 
% i = imread('harry.png');
% gs = rgb2gray(i);
% nscore=niqe(gs);
% fprintf("Image score for Grayscale image: %0.2f.\n", nscore) 
% bw = imbinarize(gs);
% InvertedBW = imcomplement(bw); 
% subplot(1, 2, 1)
% imshow(bw)
% title('Black and white Image'); 
% subplot(1, 2, 2) 
% imshow(InvertedBW) 
% title('Inverted B&W image');


