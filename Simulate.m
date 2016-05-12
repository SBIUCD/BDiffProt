function [AUROCs] = Simulate(params,R,mu0,tau,sigma,N,p,pmv)
AUROCs=zeros(R,22);
%d=zeros(N,2*p);
opt=optimset('Display','off');
pctRunOnAll warning off;
parfor i=1:R
    [d1,I]=datagenerator(mu0,tau,sigma,N,p,pmv); % For gamma and distributed data replace datagenerator by datagenerator_gamma and datagenerator_rice_distribution
    I_con = sum(d1(:,1:p),2)~=0 & sum(d1(:,p+1:2*p),2)~=0;
    %sum(I_con)
    d=RowNormalize(d1);
    lb=[0.01;0.01;min(d(:));0.001;0.0001];
    ub=[100;100;max(d(:));100;100];
    %% BDiffProt with quadratic prior
    [params1, fval] = fmincon(@(x)DiffprotDataset_QuadraticPrior_ll(d(:,1:p),d(:,p+1:2*p),x), params, [], [], [], [], lb, ub,[],opt); % Optimize paramters
    P=DiffprotDataset_QuadraticPrior(d(:,1:p),d(:,p+1:2*p),params1); % Perform analysis with optimal paramters
    
    %% BDiffProt with exponential prior
    [params1, fval] = fmincon(@(x)DiffprotDataset_ExpPrior_ll(d(:,1:p),d(:,p+1:2*p),x), params, [], [], [], [], lb, ub,[],opt); % Optimize paramters
    P1=DiffprotDataset_ExpPrior(d(:,1:p),d(:,p+1:2*p),params1); % Perform analysis with optimal paramters
    
    d2=d1;
    d2(d2==0)=NaN;
    
    %P
    I1=I(I_con);
    P=P(I_con);
    P1=P1(I_con);
    [x,y,t,auc_quad]=perfcurve(I1,P,true); % Calculate AUROC
    [x,y,t,auc_exp]=perfcurve(I1,P1,true); % Calculate AUROC
    
    %% Two sample tests
    
    [auc]=TwoSampleTests(d2,p,I,I_con); % Perform all two sample tests without imputation
    
    % Perform all two sample tests after KNN imputation 
    auc1=zeros(1,5);
    try
        d_knn=knnimpute(d2,5);
        [auc1]=TwoSampleTests(d_knn,p,I,I_con);
    catch ME        
    end
    % Perform all two sample tests after PCA-TSR imputation
    auc2=zeros(1,5);
    try
        d_pca_tsr=pcambtsr(d2,3,100,0.001);
       [auc2]=TwoSampleTests(d_pca_tsr,p,I,I_con);
    catch ME        
    end
     % Perform all two sample tests after PCA-KDR imputation
    auc3=zeros(1,5);
    try
        d_pca_kdr=pcambkdr(d2,3,100,0.001);
       [auc3]=TwoSampleTests(d_pca_kdr,p,I,I_con);
    catch ME        
    end
    % save all aurocs
    AUROCs(i,:)=[auc_quad auc_exp auc auc1 auc2 auc3];
end

end

