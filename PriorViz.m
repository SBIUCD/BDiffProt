delta=1-10^-10;
x=0:0.001:1;
alpha=0:0.01:20;
alpha1=0:0.5:20;
X=repmat(x,length(alpha),1);
Y=repmat(alpha',1,length(x));
Z1=0.5+ delta*(X.^Y)/2;
Z2=0.5.^(1-delta*(X.^Y));

x1=0:0.1:1;
X1=repmat(x1,length(alpha1),1);
Y1=repmat(alpha1',1,length(x1));
Z11=0.5+ delta*(X1.^Y1)/2;
Z21=0.5.^(1-delta*(X1.^Y1));


figure('Position',[0 0 1000 400]);
subplot(1,2,1);hold on;
surf(X,Y,Z1,'LineStyle','none','FaceAlpha',0.7); 
plot3(X1,Y1,Z11,'k-','LineWidth',2);
grid on;
view([-24 42]);
zlabel('p_{H1}','FontSize',16);ylabel('\phi','FontSize',16);xlabel('|f_{TRT}-f_{CTRL}|','FontSize',16);colormap(parula);set(gca,'FontSize',16);title('Polynomial prior');
hold off;
subplot(1,2,2);hold on; surf(X,Y,Z2,'LineStyle','none','FaceAlpha',0.7);
plot3(X1,Y1,Z21,'k-','LineWidth',2);
grid on;
view([-24 42]);
zlabel('p_{H1}','FontSize',16);ylabel('\phi','FontSize',16);xlabel('|f_{TRT}-f_{CTRL}|','FontSize',16);colormap(parula);set(gca,'FontSize',16);title('Exponential prior');
hold off;
export_fig(gcf,'prior','-jpg','-r300','-q100','-transparent');