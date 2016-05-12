function [mp] = maximum_permutations( groups,K)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
n = hist(groups); n = n(logical(n)); den = 1;
for i = 1:length(n)
    den = den*factorial(n(i)); 
end 

max_permutations = factorial(sum(n))/den;
mp=min(max_permutations,K);

end

