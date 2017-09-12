function J= Stretchlim(I)
J=imadjust(I,stretchlim(I),[0.01 0.99]);
end
