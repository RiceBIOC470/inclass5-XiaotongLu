function J2=Stretchlim2(I,x)
J2=imadjust(I,stretchlim(I),[x 1-x]);
end