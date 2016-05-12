function [AUROCs] = SimulationStudy()
%
clear all;

addpath 'MDI Toolbox 4/'
N=1000; % number of proteins
R=100; % number of replicates
a=1;
b=1;
m0=0;
k=5;
t0=0;
alpha=1;
params=[a;b;m0;k;alpha];

p=5;
mu0=15;
tau=5;
sigma=1;
%% tau=3,sigma=1,pmv=0 
AUROCs1=Simulate(params,R,mu0,tau,1,N,p,0);
%% tau=3,sigma=1,pmv=0 
AUROCs2=Simulate(params,R,mu0,tau,1,N,p,10);
%% tau=3,sigma=1,pmv=0 
AUROCs3=Simulate(params,R,mu0,tau,1,N,p,20);
%% tau=3,sigma=1,pmv=0 
AUROCs4=Simulate(params,R,mu0,tau,1,N,p,30);
%% tau=3,sigma=1,pmv=0 
AUROCs5=Simulate(params,R,mu0,tau,1,N,p,40);
%% tau=3,sigma=1,pmv=0 
AUROCs6=Simulate(params,R,mu0,tau,1,N,p,50);

disp('tau=3 sigma=1 done..');



%% tau=3,sigma=1,pmv=0 
AUROCs7=Simulate(params,R,mu0,tau,2,N,p,0);
%% tau=3,sigma=1,pmv=0 
AUROCs8=Simulate(params,R,mu0,tau,2,N,p,10);
%% tau=3,sigma=1,pmv=0 
AUROCs9=Simulate(params,R,mu0,tau,2,N,p,20);
%% tau=3,sigma=1,pmv=0 
AUROCs10=Simulate(params,R,mu0,tau,2,N,p,30);
%% tau=3,sigma=1,pmv=0 
AUROCs11=Simulate(params,R,mu0,tau,2,N,p,40);
%% tau=3,sigma=1,pmv=0 
AUROCs12=Simulate(params,R,mu0,tau,2,N,p,50);

disp('tau=3 sigma=2 done..');



%% tau=3,sigma=1,pmv=0 
AUROCs13=Simulate(params,R,mu0,tau,3,N,p,0);
%% tau=3,sigma=1,pmv=0 
AUROCs14=Simulate(params,R,mu0,tau,3,N,p,10);
%% tau=3,sigma=1,pmv=0 
AUROCs15=Simulate(params,R,mu0,tau,3,N,p,20);
%% tau=3,sigma=1,pmv=0 
AUROCs16=Simulate(params,R,mu0,tau,3,N,p,30);
%% tau=3,sigma=1,pmv=0 
AUROCs17=Simulate(params,R,mu0,tau,3,N,p,40);
%% tau=3,sigma=1,pmv=0 
AUROCs18=Simulate(params,R,mu0,tau,3,N,p,50);

disp('tau=3 sigma=3 done..');

p=25;

%% tau=3,sigma=1,pmv=0 
AUROCs19=Simulate(params,R,mu0,tau,1,N,p,0);
%% tau=3,sigma=1,pmv=0 
AUROCs20=Simulate(params,R,mu0,tau,1,N,p,10);
%% tau=3,sigma=1,pmv=0 
AUROCs21=Simulate(params,R,mu0,tau,1,N,p,20);
%% tau=3,sigma=1,pmv=0 
AUROCs22=Simulate(params,R,mu0,tau,1,N,p,30);
%% tau=3,sigma=1,pmv=0 
AUROCs23=Simulate(params,R,mu0,tau,1,N,p,40);
%% tau=3,sigma=1,pmv=0 
AUROCs24=Simulate(params,R,mu0,tau,1,N,p,50);

disp('tau=3 sigma=1 done..');



%% tau=3,sigma=1,pmv=0 
AUROCs25=Simulate(params,R,mu0,tau,2,N,p,0);
%% tau=3,sigma=1,pmv=0 
AUROCs26=Simulate(params,R,mu0,tau,2,N,p,10);
%% tau=3,sigma=1,pmv=0 
AUROCs27=Simulate(params,R,mu0,tau,2,N,p,20);
%% tau=3,sigma=1,pmv=0 
AUROCs28=Simulate(params,R,mu0,tau,2,N,p,30);
%% tau=3,sigma=1,pmv=0 
AUROCs29=Simulate(params,R,mu0,tau,2,N,p,40);
%% tau=3,sigma=1,pmv=0 
AUROCs30=Simulate(params,R,mu0,tau,2,N,p,50);

disp('tau=3 sigma=2 done..');



%% tau=3,sigma=1,pmv=0 
AUROCs31=Simulate(params,R,mu0,tau,3,N,p,0);
%% tau=3,sigma=1,pmv=0 
AUROCs32=Simulate(params,R,mu0,tau,3,N,p,10);
%% tau=3,sigma=1,pmv=0 
AUROCs33=Simulate(params,R,mu0,tau,3,N,p,20);
%% tau=3,sigma=1,pmv=0 
AUROCs34=Simulate(params,R,mu0,tau,3,N,p,30);
%% tau=3,sigma=1,pmv=0 
AUROCs35=Simulate(params,R,mu0,tau,3,N,p,40);
%% tau=3,sigma=1,pmv=0 
AUROCs36=Simulate(params,R,mu0,tau,3,N,p,50);

disp('tau=3 sigma=3 done..');

save('all_aurocs_gamma1');