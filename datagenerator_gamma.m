function [d,I] = datagenerator_gamma(mu0,tau,sigma,N,p,pms)
%mu0,tau,sigma,N,p
b0=repmat(4./mu0,N,1);
a0=mu0./b0;

mu0=gamrnd(a0,b0);
%size(mu0)
B0=repmat(sigma^2./mu0,1,p);
A0=repmat(mu0,1,p)./B0;

I=rand(N,1)<0.5;

ts=rand(N,1);
It=(ts<=0.5)*-1 + (ts>0.5);
tau=gamrnd(2*tau,0.5,N,1).*It;

mu1= mu0+I.*tau;

B1=repmat(sigma^2./mu1,1,p);
A1=repmat(mu1,1,p)./B1;

%d=zeros(N,2*p);


d(:,1:p)=gamrnd(A0,B0);%repmat(mu0,1,p)+sigma*randn(N,p);
d(:,p+1:2*p)=gamrnd(A1,B1);%repmat(mu1,1,p)+sigma*randn(N,p);

X=sort(d(:),'ascend');
lth=min(d(:));


if pms~=0
    lth=X(ceil(length(X)*pms/100));
end
d(d<=lth)=0;
end

