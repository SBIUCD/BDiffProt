function [I] = ROCPIalpha(P)
I=zeros(length(P),1);

for fdr=0:100
    I=I+BFDR(P,fdr/100);
end
end

