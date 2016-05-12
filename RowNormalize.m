function [D] = RowNormalize(data)
%% 
D=zeros(size(data));
for i=1:size(data,1)
   I=data(i,:)~=0;
   d1=data(i,I);
   d1=(d1-mean(d1))/std(d1);
   D(i,I)=d1;
end

end

