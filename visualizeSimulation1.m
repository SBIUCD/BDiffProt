load all_aurocs4;
figure('Position',[0 0 1000 2000]); hold on;
C=linspecer(6);
MS=12;
algos={'BDF-POLY','BDF-EXP','ST','WRS', 'KS', 'KW' 'PER','KNN-ST','KNN-WRS', 'KNN-KS', 'KNN-KW' 'KNN-PER','PCA-TSR-ST','PCA-TSR-WRS', 'PCA-TSR-KS', 'PCA-TSR-KW' 'PCA-TSR-PER','PCA-KDR-ST','PCA-KDR-WRS', 'PCA-KDR-KS', 'PCA-KDR-KW' 'PCA-KDR-PER'};
X=1:22;
%figure;
subplot(4,5,1);
mAUROCs=[mean(AUROCs1);mean(AUROCs2);mean(AUROCs3);mean(AUROCs4);mean(AUROCs5);mean(AUROCs6)];
sAUROCs=[std(AUROCs1);std(AUROCs2);std(AUROCs3);std(AUROCs4);std(AUROCs5);std(AUROCs6)];
[Y,I]=sort(sum(mAUROCs),'descend');
barh(flipud(mAUROCs(:,I)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I)));
title('\sigma=1,\tau=3,p=5, Normal');

subplot(4,5,2);
mAUROCs1=[mean(AUROCs7);mean(AUROCs8);mean(AUROCs9);mean(AUROCs10);mean(AUROCs11);mean(AUROCs12)];
sAUROCs1=[std(AUROCs7);std(AUROCs8);std(AUROCs9);std(AUROCs10);std(AUROCs11);std(AUROCs12)];
[Y,I1]=sort(sum(mAUROCs1),'descend');
barh(flipud(mAUROCs1(:,I1)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I1)));
title('\sigma=2,\tau=3,p=5,Normal');

subplot(4,5,3);
mAUROCs2=[mean(AUROCs13);mean(AUROCs14);mean(AUROCs15);mean(AUROCs16);mean(AUROCs17);mean(AUROCs18)];
sAUROCs2=[std(AUROCs13);std(AUROCs14);std(AUROCs15);std(AUROCs16);std(AUROCs17);std(AUROCs18)];
[Y,I2]=sort(sum(mAUROCs2),'descend');
barh(flipud(mAUROCs2(:,I2)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I2)));
title('\sigma=3,\tau=3,p=5,Normal');

subplot(4,5,4);
mAUROCs3=[mean(AUROCs19);mean(AUROCs20);mean(AUROCs21);mean(AUROCs22);mean(AUROCs23);mean(AUROCs24)];
sAUROCs3=[std(AUROCs19);std(AUROCs20);std(AUROCs21);std(AUROCs22);std(AUROCs23);std(AUROCs24)];
[Y,I3]=sort(sum(mAUROCs3),'descend');
barh(flipud(mAUROCs3(:,I3)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I3)));
title('\sigma=1,\tau=3,p=25');

subplot(4,5,5);
mAUROCs4=[mean(AUROCs25);mean(AUROCs25);mean(AUROCs27);mean(AUROCs28);mean(AUROCs29);mean(AUROCs30)];
sAUROCs4=[std(AUROCs25);std(AUROCs26);std(AUROCs27);std(AUROCs28);std(AUROCs29);std(AUROCs30)];
[Y,I4]=sort(sum(mAUROCs3),'descend');
barh(flipud(mAUROCs3(:,I4)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I4)));
title('\sigma=2,\tau=3,p=25,Normal');

subplot(4,5,6);
mAUROCs5=[mean(AUROCs31);mean(AUROCs32);mean(AUROCs33);mean(AUROCs34);mean(AUROCs35);mean(AUROCs36)];
sAUROCs5=[std(AUROCs31);std(AUROCs32);std(AUROCs33);std(AUROCs34);std(AUROCs35);std(AUROCs36)];
[Y,I5]=sort(sum(mAUROCs5),'descend');
barh(flipud(mAUROCs5(:,I5)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I5)));
title('\sigma=3,\tau=3,p=25,Normal');

%% load gamma results
load all_aurocs_gamma1;
subplot(4,5,7);
mAUROCs=[mean(AUROCs1);mean(AUROCs2);mean(AUROCs3);mean(AUROCs4);mean(AUROCs5);mean(AUROCs6)];
sAUROCs=[std(AUROCs1);std(AUROCs2);std(AUROCs3);std(AUROCs4);std(AUROCs5);std(AUROCs6)];
[Y,I]=sort(sum(mAUROCs),'descend');
barh(flipud(mAUROCs(:,I)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I)));
title('\sigma=1,\tau=3,p=5,Gamma');

subplot(4,5,8);
mAUROCs1=[mean(AUROCs7);mean(AUROCs8);mean(AUROCs9);mean(AUROCs10);mean(AUROCs11);mean(AUROCs12)];
sAUROCs1=[std(AUROCs7);std(AUROCs8);std(AUROCs9);std(AUROCs10);std(AUROCs11);std(AUROCs12)];
[Y,I1]=sort(sum(mAUROCs1),'descend');
barh(flipud(mAUROCs1(:,I1)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I1)));
title('\sigma=2,\tau=3,p=5,Gamma');

subplot(4,5,9);
mAUROCs2=[mean(AUROCs13);mean(AUROCs14);mean(AUROCs15);mean(AUROCs16);mean(AUROCs17);mean(AUROCs18)];
sAUROCs2=[std(AUROCs13);std(AUROCs14);std(AUROCs15);std(AUROCs16);std(AUROCs17);std(AUROCs18)];
[Y,I2]=sort(sum(mAUROCs2),'descend');
barh(flipud(mAUROCs2(:,I2)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I2)));
title('\sigma=3,\tau=3,p=5,Gamma');

subplot(4,5,10);
mAUROCs3=[mean(AUROCs19);mean(AUROCs20);mean(AUROCs21);mean(AUROCs22);mean(AUROCs23);mean(AUROCs24)];
sAUROCs3=[std(AUROCs19);std(AUROCs20);std(AUROCs21);std(AUROCs22);std(AUROCs23);std(AUROCs24)];
[Y,I3]=sort(sum(mAUROCs3),'descend');
barh(flipud(mAUROCs3(:,I3)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I3)));
title('\sigma=1,\tau=3,p=25,Gamma');

subplot(4,5,11);
mAUROCs4=[mean(AUROCs25);mean(AUROCs25);mean(AUROCs27);mean(AUROCs28);mean(AUROCs29);mean(AUROCs30)];
sAUROCs4=[std(AUROCs25);std(AUROCs26);std(AUROCs27);std(AUROCs28);std(AUROCs29);std(AUROCs30)];
[Y,I4]=sort(sum(mAUROCs3),'descend');
barh(flipud(mAUROCs3(:,I4)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I4)));
title('\sigma=2,\tau=3,p=25,Gamma');

subplot(4,5,12);
mAUROCs5=[mean(AUROCs31);mean(AUROCs32);mean(AUROCs33);mean(AUROCs34);mean(AUROCs35);mean(AUROCs36)];
sAUROCs5=[std(AUROCs31);std(AUROCs32);std(AUROCs33);std(AUROCs34);std(AUROCs35);std(AUROCs36)];
[Y,I5]=sort(sum(mAUROCs5),'descend');
barh(flipud(mAUROCs5(:,I5)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I5)));
title('\sigma=3,\tau=3,p=25,Gamma');

%% load rice results
load all_aurocs1_rice1;
subplot(4,5,13);
mAUROCs=[mean(AUROCs1);mean(AUROCs2);mean(AUROCs3);mean(AUROCs4);mean(AUROCs5);mean(AUROCs6)];
sAUROCs=[std(AUROCs1);std(AUROCs2);std(AUROCs3);std(AUROCs4);std(AUROCs5);std(AUROCs6)];
[Y,I]=sort(sum(mAUROCs),'descend');
barh(flipud(mAUROCs(:,I)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I)));
title('\sigma=1,\tau=3,p=5, Rice');

subplot(4,5,14);
mAUROCs1=[mean(AUROCs7);mean(AUROCs8);mean(AUROCs9);mean(AUROCs10);mean(AUROCs11);mean(AUROCs12)];
sAUROCs1=[std(AUROCs7);std(AUROCs8);std(AUROCs9);std(AUROCs10);std(AUROCs11);std(AUROCs12)];
[Y,I1]=sort(sum(mAUROCs1),'descend');
barh(flipud(mAUROCs1(:,I1)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I1)));
title('\sigma=2,\tau=3,p=5, Rice');

subplot(4,5,15);
mAUROCs2=[mean(AUROCs13);mean(AUROCs14);mean(AUROCs15);mean(AUROCs16);mean(AUROCs17);mean(AUROCs18)];
sAUROCs2=[std(AUROCs13);std(AUROCs14);std(AUROCs15);std(AUROCs16);std(AUROCs17);std(AUROCs18)];
[Y,I2]=sort(sum(mAUROCs2),'descend');
barh(flipud(mAUROCs2(:,I2)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I2)));
title('\sigma=3,\tau=3,p=5, Rice');

subplot(4,5,16);
mAUROCs3=[mean(AUROCs19);mean(AUROCs20);mean(AUROCs21);mean(AUROCs22);mean(AUROCs23);mean(AUROCs24)];
sAUROCs3=[std(AUROCs19);std(AUROCs20);std(AUROCs21);std(AUROCs22);std(AUROCs23);std(AUROCs24)];
[Y,I3]=sort(sum(mAUROCs3),'descend');
barh(flipud(mAUROCs3(:,I3)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I3)));
title('\sigma=1,\tau=3,p=25, Rice');

subplot(4,5,17);
mAUROCs4=[mean(AUROCs25);mean(AUROCs25);mean(AUROCs27);mean(AUROCs28);mean(AUROCs29);mean(AUROCs30)];
sAUROCs4=[std(AUROCs25);std(AUROCs26);std(AUROCs27);std(AUROCs28);std(AUROCs29);std(AUROCs30)];
[Y,I4]=sort(sum(mAUROCs3),'descend');
barh(flipud(mAUROCs3(:,I4)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I4)));
title('\sigma=2,\tau=3,p=25, Rice');

subplot(4,5,18);
mAUROCs5=[mean(AUROCs31);mean(AUROCs32);mean(AUROCs33);mean(AUROCs34);mean(AUROCs35);mean(AUROCs36)];
sAUROCs5=[std(AUROCs31);std(AUROCs32);std(AUROCs33);std(AUROCs34);std(AUROCs35);std(AUROCs36)];
[Y,I5]=sort(sum(mAUROCs5),'descend');
barh(flipud(mAUROCs5(:,I5)'),'stacked');colormap(parula);xlim([0 6]);ylim([0 23]);
xlabel('AUROC');
set(gca,'YTick',1:22,'YTickLabel',fliplr(algos(I5)));
title('\sigma=3,\tau=3,p=25, Rice');
%export_fig(gcf,'../NewFigures/normal1','-jpg','-r600','-q100','-transparent');


%export_fig(gcf,'../NewFigures/normal1','-jpg','-r600','-q100','-transparent');

