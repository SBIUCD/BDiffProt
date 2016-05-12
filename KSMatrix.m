function [ P] = KSMatrix(CTRL,TRT)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
N=size(CTRL,1);
P=ones(N,1);
for i=1:N
    dc=CTRL(i,:);
    dt=TRT(i,:);
    if sum(isnan(dc))<length(isnan(dc)) && sum(isnan(dt))<length(isnan(dt))
        [h,p]=kstest2(dc',dt');
        P(i)=p;
    end
end

end




