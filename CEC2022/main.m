% ---------------------------------------------
% 公众号：元启发式优化算法
% 作者：无畏
% ---------------------------------------------
clc
clear
close all
%% CEC2022
SearchAgents_no=30; % 种群规模
Max_iteration=100; % 迭代次数
FunctionName='F12';
dim=2;
[lb,ub,dim,fobj]=Get_CEC2022_details(FunctionName,dim);
[fMin,bestX,Convergence_curve]=DBO(SearchAgents_no,Max_iteration,lb,ub,dim,fobj);
figure('Position',[500 500 1200 450]);
subplot(1,2,1);
[x,y,f] = PlotCEC2022(FunctionName);
surf(x,y,f,'LineStyle','none');
hold on;
colormap jet;
colorbar;
title(FunctionName);
xlabel('x1');
ylabel('x2');
zlabel([FunctionName,'(x1,x2)']);
subplot(1,2,2);
plot(Convergence_curve,'-rd','LineWidth',2,'MarkerIndices',1:5:100);
title(['Objective space for ',FunctionName]);
xlabel('Iteration');
ylabel('Fitness Value');
axis tight;
grid on;
box on;
legend('DBO');
% ---------------------------------------------
