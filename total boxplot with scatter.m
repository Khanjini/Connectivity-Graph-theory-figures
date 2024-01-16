%% COH

figure('Position',[400 75 500 500])
subplot(5,2,1);
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_good_CC';
all{5} = good_CC_alpha_cho';
all{6} = good_CC_alpha_k';
all{7} = good_CC_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);
% ylabel('CC','FontSize',14);
% title('BCI-literacy','FontSize',14)
;ylim([0.1 0.55])
hold on;
k = t_good_CC;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_CC_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_CC_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_CC_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

subplot(5,2,2);
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_bad_CC';
all{5} = bad_CC_alpha_cho';
all{6} = bad_CC_alpha_k';
all{7} = bad_CC_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);ylim([0.1 0.55])
% title('BCI-illiteracy','FontSize',14);
hold on;
k = t_bad_CC;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_CC_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_CC_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_CC_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
% CPL
subplot(5,2,3);
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_good_CL';
all{5} = good_CL_alpha_cho';
all{6} = good_CL_alpha_k';
all{7} = good_CL_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);ylim([1 30])
% ylabel('CPL','fontsize',14)
hold on;
k = t_good_CL;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_CL_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_CL_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_CL_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

subplot(5,2,4);
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_bad_CL';
all{5} = bad_CL_alpha_cho';
all{6} = bad_CL_alpha_k';
all{7} = bad_CL_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);ylim([1 30])
hold on;
k = t_bad_CL;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_CL_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_CL_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_CL_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

% GE
subplot(5,2,5);
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_good_GE';
all{5} = good_GE_alpha_cho';
all{6} = good_GE_alpha_k';
all{7} = good_GE_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);ylim([0.1 0.6])
% ylabel('GE','FontSize',14);
hold on;
k = t_good_GE;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_GE_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_GE_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_GE_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

subplot(5,2,6);
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_bad_GE';
all{5} = bad_GE_alpha_cho';
all{6} = bad_GE_alpha_k';
all{7} = bad_GE_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);ylim([0.1 0.6])
hold on;
k = t_bad_GE;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_GE_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_GE_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_GE_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
% LE
subplot(5,2,7)
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_good_LE';
all{5} = good_LE_alpha_cho';
all{6} = good_LE_alpha_k';
all{7} = good_LE_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);ylim([0.1 0.55])
% ylabel('LE','fontsize',14)
hold on;
k = t_good_LE;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_LE_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_LE_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_LE_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

subplot(5,2,8)
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_bad_LE';
all{5} = bad_LE_alpha_cho';
all{6} = bad_LE_alpha_k';
all{7} = bad_LE_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);ylim([0.1 0.55])
hold on;
k = t_bad_LE;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_LE_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_LE_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_LE_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

% str
subplot(5,2,9);ylim([1.8 8])
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_good_str';
all{5} = good_str_alpha_cho';
all{6} = good_str_alpha_k';
all{7} = good_str_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);;ylim([1.8 8])
% ylabel('STR','FontSize',14);
hold on;
k = t_good_str;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_str_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_str_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_str_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

subplot(5,2,10)
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_bad_str';
all{5} = bad_str_alpha_cho';
all{6} = bad_str_alpha_k';
all{7} = bad_str_alpha_k2';
boxplotGroup(all,'groupLines', true)
;xlim([3.5 8]);xticks([]);;ylim([1.8 8])
hold on;
k = t_bad_str;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_str_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_str_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_str_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

%% PLV
figure('Position',[400 75 500 500])
subplot(5,2,1);
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_good_CC';
all{5} = good_CC_alpha_cho';
all{6} = good_CC_alpha_k';
all{7} = good_CC_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);
% ylabel('CC','FontSize',14);
% title('BCI-literacy','FontSize',14)
;ylim([0.06 0.47])
hold on;
k = t_good_CC;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_CC_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_CC_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_CC_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

subplot(5,2,2);
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_bad_CC';
all{5} = bad_CC_alpha_cho';
all{6} = bad_CC_alpha_k';
all{7} = bad_CC_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);;ylim([0.06 0.47])
% title('BCI-illiteracy','FontSize',14);
hold on;
k = t_bad_CC;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_CC_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_CC_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_CC_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
% CPL
subplot(5,2,3);
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_good_CL';
all{5} = good_CL_alpha_cho';
all{6} = good_CL_alpha_k';
all{7} = good_CL_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);ylim([1.2 33])
% ylabel('CPL','fontsize',14)
hold on;
k = t_good_CL;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_CL_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_CL_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_CL_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

subplot(5,2,4);
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_bad_CL';
all{5} = bad_CL_alpha_cho';
all{6} = bad_CL_alpha_k';
all{7} = bad_CL_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);;ylim([1.2 33])
hold on;
k = t_bad_CL;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_CL_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_CL_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_CL_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

% GE
subplot(5,2,5);
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_good_GE';
all{5} = good_GE_alpha_cho';
all{6} = good_GE_alpha_k';
all{7} = good_GE_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);ylim([0.07 0.53])
% ylabel('GE','FontSize',14);
hold on;
k = t_good_GE;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_GE_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_GE_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_GE_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

subplot(5,2,6);
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_bad_GE';
all{5} = bad_GE_alpha_cho';
all{6} = bad_GE_alpha_k';
all{7} = bad_GE_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);ylim([0.07 0.53])
hold on;
k = t_bad_GE;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_GE_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_GE_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_GE_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
% LE
subplot(5,2,7)
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_good_LE';
all{5} = good_LE_alpha_cho';
all{6} = good_LE_alpha_k';
all{7} = good_LE_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);ylim([0.07 0.48])
% ylabel('LE','fontsize',14)
hold on;
k = t_good_LE;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_LE_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_LE_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_LE_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

subplot(5,2,8)
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_bad_LE';
all{5} = bad_LE_alpha_cho';
all{6} = bad_LE_alpha_k';
all{7} = bad_LE_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);ylim([0.07 0.48])
hold on;
k = t_bad_LE;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_LE_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_LE_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_LE_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

% str
subplot(5,2,9);
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_good_str';
all{5} = good_str_alpha_cho';
all{6} = good_str_alpha_k';
all{7} = good_str_alpha_k2';
boxplotGroup(all,'groupLines', true);
xlim([3.5 8]);xticks([]);ylim([1.2 7])
% ylabel('STR','FontSize',14);
hold on;
k = t_good_str;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_str_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_str_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = good_str_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

subplot(5,2,10)
all = cell(1,4);
all{1} = zeros(size(t_good_CC,2),1);
all{2} = zeros(size(t_good_CC,2),1);
all{3} = zeros(size(t_good_CC,2),1);
all{4} = t_bad_str';
all{5} = bad_str_alpha_cho';
all{6} = bad_str_alpha_k';
all{7} = bad_str_alpha_k2';
boxplotGroup(all,'groupLines', true)
;xlim([3.5 8]);xticks([]);ylim([1.2 7])
hold on;
k = t_bad_str;
x = 4.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_str_alpha_cho;
x = 5.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','c','MarkerFaceColor','c','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_str_alpha_k;
x = 6.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);
hold on;
k = bad_str_alpha_k2;
x = 7.5 + randi([-10,10],1, length(k))*0.01;
scatter(x,k,'MarkerEdgeColor','m','MarkerFaceColor','m','MarkerEdgeAlpha',.3,'MarkerFaceAlpha',.2);

