function [auc] = TwoSampleTests(d,p,I,I_con)
%Performs t-test, ks test and kruskal wallis test
[H,P2]=ttest2(d(:,1:p)',d(:,p+1:2*p)');
    
[P3]=RankSumMatrix(d(:,1:p),d(:,p+1:2*p));
    
[P4]=KSMatrix(d(:,1:p),d(:,p+1:2*p));
[P5]=KWMatrix(d(:,1:p),d(:,p+1:2*p));
I=I(I_con);
P2=P2(I_con);
P3=P3(I_con);
P4=P4(I_con);
P5=P5(I_con);

[x,y,t,auc3]=perfcurve(I,1-P2,true);
[x,y,t,auc4]=perfcurve(I,1-P3,true);
[x,y,t,auc5]=perfcurve(I,1-P4,true);
[x,y,t,auc6]=perfcurve(I,1-P5,true);
%I_con=sum(d,2)~=0;
auc7=0;
% P5=PermutationTestME(d(I_con,:)',[zeros(p,1);ones(p,1)],1000);
try
    P6=PermutationTestMe(d(I_con,:)',[zeros(p,1);ones(p,1)],1000);
    %P5
    [x,y,t,auc7]=perfcurve(I,1-P6,true);
catch ME    
    
end


%P51=ones(length(I),1);
%P51(I_con)=P5;



auc=[auc3 auc4 auc5 auc6 auc7];
end

