function [ll1] = DiffprotDataset_QuadraticPrior_ll(PCTRL,PTRT,params)
N=size(PCTRL,1);
a=params(1);
b=params(2);
% m0=params(2+1:2+N);
% k=params(N+3:2+2*N);
% t0=params(2*N+3:2+3*N);
m0=params(3);
k=params(4);
alpha=params(5);
t0=0;
ll1=0;
% ll2=0;
% ll3=0;
for i=1:N
    [DP1]=DiffProtMatrix_QuadraticPrior(PCTRL(i,:)',PTRT(i,:)',a,b,k,m0,t0,alpha);
    %P=DP1.PO1;
    
    ll1=ll1-DP1.ll;
end

end

