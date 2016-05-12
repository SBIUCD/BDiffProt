function [DP] = DiffProtMatrix_QuadraticPrior(PCTRL,PTRT,a,b,k,m0,t0,alpha)
%% P_CTRL, P_TRT
PCTRL1=PCTRL(PCTRL~=0);
PTRT1=PTRT(PTRT~=0);
Y=[PCTRL1;PTRT1];
P0=0;
P1=0;
if(length(PCTRL1)>=1 && length(PTRT1)>=1)
%     if(mean(PCTRL1)>mean(PTRT1))
%         Y=[PTRT1;PCTRL1];
%         XNULL=[ones(length(Y),1) zeros(length(Y),1)];
%         XTRT= [ones(length(Y),1) [zeros(length(PTRT1),1); ones(length(PCTRL1),1)]];
%     else
        Y=[PCTRL1;PTRT1];
        XNULL=[ones(length(Y),1) zeros(length(Y),1)];
        XTRT= [ones(length(Y),1) [zeros(length(PCTRL1),1); ones(length(PTRT1),1)]];

%    end
    mub=[m0; t0];
    Vb=[1 0
        0 k];
    P0 = loglikelihood(Y,XNULL,mub,Vb,a,b);
    P1 = loglikelihood(Y,XTRT,mub,Vb,a,b);
end
%[P0 P1]
[Pr2, Pr3]=Prior(PCTRL,PTRT,alpha);

DP.PO1=P1+Pr2;
DP.PO0=P0+log((1-exp(Pr2)));
DP=calcProbs(DP);
DP.ll=marginal(P1+Pr2,P0+log((1-exp(Pr2))));

% DP1.PO1=P1+Pr2;
% DP1.PO0=P0+log((1-exp(Pr2)));
% DP1=calcProbs(DP1);
% DP1.ll=P1+Pr2+P0+log((1-exp(Pr2)));
% 
% DP2.PO1=P1+Pr3;
% DP2.PO0=P0+log((1-exp(Pr3)));
% DP2=calcProbs(DP2);
% DP2.ll=P1+Pr3+P0+log((1-exp(Pr3)));

% D.lin=DP;
% D.quad=DP1;
% D.exp=DP2;
end

