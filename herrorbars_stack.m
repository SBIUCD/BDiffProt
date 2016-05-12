function [] = herrorbars_stack(means,stds,I)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
M1=fliplr(means(:,I));
S1=fliplr(stds(:,I));
M=0;
hold on;
for i=1:size(M1,1)
    M=M+M1(i,:);
    herrorbar(M,1:size(M1,2),S1(i,:),'k.');
end
hold off;
end

