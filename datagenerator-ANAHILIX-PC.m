function [d,I] = datagenerator(mu0,tau,sigma,N,p,pms)
%mu0,tau,sigma,N,p
%mu0,tau,sigma,N,p
mu0=mu0+2*randn(N,1);
ts=rand(N,1);
It=(ts<=0.5)*-1 + (ts>0.5);
tau=gamrnd(2*tau,0.5,N,1).*It;
%size(mu0)
I=rand(N,1)<0.5;
mu1= mu0+I.*tau;
d=zeros(N,2*p);
d(:,1:p)=repmat(mu0,1,p)+sigma*randn(N,p);
d(:,p+1:2*p)=repmat(mu1,1,p)+sigma*randn(N,p);
X=sort(d(:),'ascend');
lth=min(d(:));
if pms~=0
    lth=X(ceil(length(X)*pms/100));
end
d(d<lth)=0;
end

