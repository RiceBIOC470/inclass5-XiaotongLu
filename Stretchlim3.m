function J3=Stretchlim3(I,x)
if nargin==2
    J3=Stretchlim2(I,x);
elseif nargin==1
        x=0.01;
J3=Stretchlim(I) 
else 
    error('must have one or two inputs');
end
end