function [auc] = AllTests(d,p,I)
%Performs t-test, ks test and kruskal wallis test
[H,P2]=ttest2(d(:,1:p)',d(:,p+1:2*p)');
    
[P3]=RankSumMatrix(d(:,1:p),d(:,p+1:2*p));
    
[P4]=KWMatrix(d(:,1:p),d(:,p+1:2*p));
I_con=sum(d,2)~=0;
I=I(I_con);

end

