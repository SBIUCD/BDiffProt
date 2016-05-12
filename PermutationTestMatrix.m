function [P] = PermutationTestMatrix( CTRL,TRT,K)
N=size(CTRL,1);
P=ones(N,1);
G=[zeros(size(CTRL,2),1);ones(size(TRT,2),1)];
for i=1:N
    dc=CTRL(i,:);
    dt=TRT(i,:);
    if sum(isnan(dc))<length(isnan(dc)) && sum(isnan(dt))<length(isnan(dt))
        p=PermutationTest([dc';dt'],G,K);
        P(i)=p;
    end
end
end

