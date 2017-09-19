%AW: looks good. see minor comment below. 1/1.


%Inclass assignment 5.

% 1. (a) Write a function that reads in an image and displays it so that 1%
% of the pixels are black and 1% of the pixels are white. Hint: your
% function can call the stretchlim function, see the help for that function.
% (b) Write a second function where the fraction of pixels to display as
% black or white are equal and can be specified as a second input to this
% function. (c) Redo part (b) but make the option to specify the fraction
% of black/white pixels optional with a default value of 1% if not
% specified. 

%XiaotongLu(a)

I=imread('C:\users\win\desktop\rabbit.jpg')
figure
imshow(I)
imag=Stretchlim(I);
imshow(imag)

%function J= Stretchlim(I)
%J=imadjust(I,stretchlim(I),[0.01 0.99]);
%end

%XiaotongLu(b)
imag2=Stretchlim2(I,x)
imshow(imag2)

%function J2=Stretchlim2(I,x)
%J2=imadjust(I,stretchlim(I),[x 1-x]);
%end

%XiaotongLu(c)
imag3=Stretchlim3(I,x)
imshow(imag3)

%function J3=Stretchlim3(I,x)
%if nargin==2
%   J3=Stretchlim2(I,x);
%elseif nargin==1
%       x=0.01; 

%AW: why define x here? you don't use it.

%J3=Stretchlim(I) 
%else 
%    error('must have one or two inputs');
%end
%end
%
%function J2=Stretchlim2(I,x)
%J2=imadjust(I,stretchlim(I),[x 1-x]);


%function J= Stretchlim(I)
%J=imadjust(I,stretchlim(I),[0.01 0.99]);
    

%2. Write a function to take the reverse complement of a DNA sequence, that
%is, returns the complementary base pair for each base, read from end
%to beginning. (e.g. the reverse compliment of ATGC is GCAT). Do not use the
%builtin MATLAB function for this. 

%XiaotongLu
clear all;
ii=['A','T','G','C'];
randnum=randi(4,1,100);
seq=ii(randnum);
RCSeq=RevCom(seq)
function Seq=RevCom(seq)
A=strfind(seq,'A');
T=strfind(seq,'T');
G=strfind(seq,'G');
C=strfind(seq,'C');
seq([A])=['T'];
seq([T])=['A'];
seq([G])=['C'];
seq([C])=['G'];
Seq=reverse(seq);
end
