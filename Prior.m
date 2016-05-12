function [P2,P3] = Prior(PCTRL,PTRT,alpha)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
delta=1-10^-10;
fctrl = sum(PCTRL==0)/(length(PCTRL));
ftrt = sum(PTRT==0)/(length(PTRT));
%P1=0.5+ delta*abs(fctrl-ftrt)./2;
P2= 0.5+ delta*(abs(fctrl-ftrt).^alpha)/2;
P3=0.5.^(1-delta*(abs(fctrl-ftrt).^alpha));


% [P1 P2 P3]
%P1=log(P1);
P2=log(P2);
P3=log(P3);

end

