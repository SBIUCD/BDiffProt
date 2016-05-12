function [L] = marginal(LP1,LP2)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
M=max(LP1,LP2);
L=log(exp(LP1-M)+exp(LP2-M))+M;

end

