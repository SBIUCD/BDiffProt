function [D1] = calcProbs(D)
%
m=min([D.PO1;D.PO0]);

D.PO1=exp(D.PO1-m);
D.PO0=exp(D.PO0-m);
s=D.PO1+D.PO0;
D1.PO1=D.PO1./(s);
D1.PO0=D.PO0./(s);

end

