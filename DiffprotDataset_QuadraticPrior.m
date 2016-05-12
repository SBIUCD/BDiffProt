function [P] = DiffprotDataset_QuadraticPrior(PCTRL,PTRT,params)
%% Input variables: PCTRL, PTRT= matrices of control and treatment intensities, row = protein, column = sample, params = paramters of DiffProt
% Output variables: P= posterior probabilities
N=size(PCTRL,1);
a=params(1);
b=params(2);

m0=params(3);
k=params(4);
t0=0;
alpha=params(5);

P=zeros(N,1);
for i=1:N
    [DP1]=DiffProtMatrix_QuadraticPrior(PCTRL(i,:)',PTRT(i,:)',a,b,k,m0,t0,alpha);
    P(i)=DP1.PO1;  
   
end
end

