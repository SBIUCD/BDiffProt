function [DP] = DiffProtMatrix_QuadraticPrior(PCTRL,PTRT,a,b,k,m0,t0,alpha)
%% P_CTRL, P_TRT
PCTRL1=PCTRL(PCTRL~=0);
PTRT1=PTRT(PTRT~=0);
Y=[PCTRL1;PTRT1];
P0=0;
P1=0;
if(length(PCTRL1)>=1 && length(PTRT1)>=1)
    Y=[PCTRL1;PTRT1];
    XNULL=[ones(length(Y),1) zeros(length(Y),1)];
    %XNULL=ones(length(Y),1);
    XTRT= [ones(length(Y),1) [zeros(length(PCTRL1),1); ones(length(PTRT1),1)]];
    mub=[m0; t0];
    Vb=[1 0
        0 k];
    %P0 = loglikelihood(Y,XNULL,m0,1,a,b);
    P0 = loglikelihood(Y,XNULL,mub,Vb,a,b);
    P1 = loglikelihood(Y,XTRT,mub,Vb,a,b);
end

[Pr2, Pr3]=Prior(PCTRL,PTRT,alpha);

DP.PO1=P1+Pr2;
DP.PO0=P0+log((1-exp(Pr2)));
DP=calcProbs(DP);
DP.ll=marginal(P1+Pr2,P0+log((1-exp(Pr2))));


end

