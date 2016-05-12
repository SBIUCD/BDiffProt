function [I] = BFDR(P,alpha)
%%
r=1:-0.01:0;
for i=1:length(r)
    I=P>=r(i);
    FDR=sum(I.*(1-P))/(sum(I.*P)+0.0001)
    if FDR>=alpha/100
        break;
    end
end
end

