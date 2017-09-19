function J3=Stretchlim3(I,x)
if nargin==2
    J3=Stretchlim2(I,x);
elseif nargin==1
        x=0.01; %AW: why define x here if you don't use it? 
J3=Stretchlim(I) 
else 
    error('must have one or two inputs');
end
end


function J= Stretchlim(I)
J=imadjust(I,stretchlim(I),[0.01 0.99]);

function J2=Stretchlim2(I,x)
J2=imadjust(I,stretchlim(I),[x 1-x]);
