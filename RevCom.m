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