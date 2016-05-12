function [d,I] = datagenerator_rice_distribution(m0,tau,s0,N,p,pms)
%mu0,tau,sigma,N,p

%m1= m0+tau;
mu0=ricernd(repmat(m0,N,1),repmat(s0,N,1));

ts=rand(N,1);
It=(ts<=0.5)*-1 + (ts>0.5);
tau=gamrnd(2*tau,0.5,N,1).*It;

%size(mu0)
I=rand(N,1)<0.5;
mu1=mu0;
mu1(I)=mu0(I)+tau(I);
%mu1= mu0;
%mu1(I==1)=m11;
d=[ricernd(repmat(mu0,1,p),repmat(s0,N,p)) ricernd(repmat(mu1,1,p),repmat(s0,N,p))];
X=sort(d(:),'ascend');
lth=min(d(:));
if pms~=0
    lth=X(ceil(length(X)*pms/100));
end
d(d<lth)=0;
end

