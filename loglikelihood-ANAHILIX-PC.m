function [ll] = loglikelihood(Y,X,mub,Vb,a,b)
%calculates log likelihood based on matrix formulations
Vb1=Vb\eye(size(Vb));
Vs1=(Vb1+X'*X);
Vs=Vs1\eye(size(Vs1));
mus=Vs*(Vb1*mub+X'*Y);
n=length(Y);
as=a+n/2;
bs=b+0.5*(mub'*Vb1*mub + Y'*Y - mus'*Vs1*mus);

%[as*log(bs) 0.5*(log(det(Vs))-log(det(Vb)))]
ll=0.5*(log(det(Vs))-log(det(Vb))) - as*log(bs);
end

