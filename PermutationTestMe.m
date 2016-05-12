function [P] = PermutationTestMe(data,groups,Nperm)
%data is K X N, NPerm=number of permutation, groups one zero
Nperm1=min(2^size(data,1),Nperm);
if Nperm1<Nperm
    PM= dec2bin(0:2^(size(data,1))-1)-'0';
    PM=PM';
else
PM=randi([0,1],size(data,1),Nperm1);
end
P=ones(1,size(data,2));
for i=1:size(data,2)
    di=data(:,i);
    dig=di(groups==1);
    digi=di(groups==0);
    
    m1=nansum(dig)/length(dig);
    m2=nansum(digi)/length(digi);
    
    s1=nanvar(dig);
    s2=nanvar(digi);
    
    n1=sum(groups.*(~isnan(di)));
    n2=sum((1-groups).*(~isnan(di)));
    t0=abs(m1-m2)/sqrt(s1/n1 + s2/n2);
    %t0
    P(i)=pval(di,PM,t0);
end

 function [p]=pval(d,PM,t0)
     d1=repmat(d,1,size(PM,2));
     %size(d1)
     %size(PM)
     Id1=~isnan(d1);
     G1=sum(PM.*Id1);
     G0=sum((1-PM).*Id1);
     mu1=nansum(d1.*PM)./G1;
     mu2=nansum(d1.*(1-PM))./G0;
     S12=nansum(((d1-repmat(mu1,size(d1,1),1)).^2).*PM)./G1;
     S02=nansum(((d1-repmat(mu2,size(d1,1),1)).^2).*PM)./G0;
     S=sqrt(S12./G1+S02./G0);
     %(abs(mu1-mu2)./S)
     p=sum((abs(mu1-mu2)./S)>=t0)/size(PM,2);
 end
end



