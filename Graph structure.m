%% PLV

bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];
good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];

M = 15;
N = 15;
idx = eye(M,N);

good_sum = zeros(15,15);

for k = 1:size(good,2);
    num = good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\plv\plv_alpha_2s_FDR');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\plv\plv_alpha_2s_FDR');
    
    good_sum = good_sum + plv_mat_alpha;
    
end;

g_mat = good_sum./size(good,2);

bad_sum = zeros(15,15);

for k = 1:size(bad,2);
    num = bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\plv\plv_alpha_2s_FDR');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\plv\plv_alpha_2s_FDR');
    
    bad_sum = bad_sum + plv_mat_alpha;
    
end;

b_mat = bad_sum./size(bad,2);

chans = {'F3';'FC3';'C5';'C3';'CP3';'P3';'O1';'Cz';'F4';'FC4';'C4';'C6';'CP4';'P4';'O2'};
figure;
subplot(3,2,5);imagesc(g_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 10);xtickangle(50);
ylabel('PLV - alpha','FontSize', 15)
subplot(3,2,6);imagesc(b_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 10);xtickangle(50);


N = 15;
BC_g = betweenness_wei(g_mat)/[(N-1)*(N-2)];
BC_b = betweenness_wei(b_mat)/[(N-1)*(N-2)];

[g_Ci,g_Q] = modularity_und(g_mat);
g_Z = module_degree_zscore(g_mat,g_Ci);
g_P = participation_coef(g_mat,g_Ci);

[b_Ci,b_Q] = modularity_und(b_mat);
b_Z = module_degree_zscore(b_mat,b_Ci);
b_P = participation_coef(b_mat,b_Ci);

BC = [BC_g';BC_b'];
Q = [g_Q;b_Q];
Z = [g_Z';b_Z'];
P = [g_P';b_P'];
M = [g_Ci';b_Ci'];

b_Ci = b_Ci';
g_Ci = g_Ci';

hold on;scatter(g_P,g_Z,'MarkerEdgeColor',[.8 0 0],'LineWidth',1.2);
;hold on;scatter(b_P,b_Z,'x','MarkerEdgeColor',[.8 0 0],'LineWidth',1.2);
;ylim([-4 4]);xlim([0 1])

hold on;scatter([1:15],BC_g,'MarkerEdgeColor',[.8 0 0],'LineWidth',1.2);
hold on;plot([1:15],BC_b,'x','MarkerEdgeColor',[.8 0 0],'LineWidth',1.2);
ylim([0 1])

chans = {'F3','FC3','C5','C3','CP3','P3','O1','Cz','F4','FC4','C4','C6','CP4','P4','O2'};
set(gca,'XTick',1:15,'XTickLabel',chans,'FontSize', 10)


%% COH
clear all

M = 15;
N = 15;
idx = eye(M,N);

good_sum = zeros(15,15);

for k = 1:size(good,2);
    num = good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\coh\coh_alpha_2s_FDR');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\coh\coh_alpha_2s_FDR');
    
    good_sum = good_sum + coh_mat_alpha;
    
end;

g_mat = good_sum./size(good,2);

bad_sum = zeros(15,15);

for k = 1:size(bad,2);
    num = bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\coh\coh_alpha_2s_FDR');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\coh\coh_alpha_2s_FDR');
    
    bad_sum = bad_sum + coh_mat_alpha;
    
end;

b_mat = bad_sum./size(bad,2);

subplot(3,2,1);imagesc(g_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 8);xtickangle(50);
ylabel('COH - alpha','FontSize', 15)
title('BCI-literacy','FontSize', 20);
subplot(3,2,2);imagesc(b_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 8);xtickangle(50);
title('BCI-illiteracy','FontSize', 20);


N = 15;
BC_g = betweenness_wei(g_mat)/[(N-1)*(N-2)];
BC_b = betweenness_wei(b_mat)/[(N-1)*(N-2)];

[g_Ci,g_Q] = modularity_und(g_mat);
g_Z = module_degree_zscore(g_mat,g_Ci);
g_P = participation_coef(g_mat,g_Ci);

[b_Ci,b_Q] = modularity_und(b_mat);
b_Z = module_degree_zscore(b_mat,b_Ci);
b_P = participation_coef(b_mat,b_Ci);

BC = [BC_g';BC_b'];
Q = [g_Q;b_Q];
Z = [g_Z';b_Z'];
P = [g_P';b_P'];
M = [g_Ci';b_Ci'];

b_Ci = b_Ci';
g_Ci = g_Ci';

figure;
hold on;scatter(g_P,g_Z,'MarkerEdgeColor',[.0 .9 0],'LineWidth',1.2);
;hold on;scatter(b_P,b_Z,'x','MarkerEdgeColor',[.0 .9 0],'LineWidth',1.2);
;ylim([-4 4]);xlim([0 1])

figure;
scatter([1:15],BC_g,'MarkerEdgeColor',[.0 .9 0],'LineWidth',1.2);
hold on;plot([1:15],BC_b,'x','MarkerEdgeColor',[.0 .9 0],'LineWidth',1.2);

%% iCOH
clear all

M = 15;
N = 15;
idx = eye(M,N);

good_sum = zeros(15,15);

for k = 1:size(good,2);
    num = good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\icoh\icoh_alpha_2s_FDR');
    l_name = sprintf('pertest_icoh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\icoh\icoh_alpha_2s_FDR');
    
    good_sum = good_sum + icoh_mat_alpha;
    
end;

g_mat = good_sum./size(good,2);

bad_sum = zeros(15,15);

for k = 1:size(bad,2);
    num = bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\icoh\icoh_alpha_2s_FDR');
    l_name = sprintf('pertest_icoh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\icoh\icoh_alpha_2s_FDR');
    
    bad_sum = bad_sum + icoh_mat_alpha;
    
end;

b_mat = bad_sum./size(bad,2);

subplot(3,2,3);imagesc(g_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 10);xtickangle(50);
ylabel('iCOH - alpha','FontSize', 15)
subplot(3,2,4);imagesc(b_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 10);xtickangle(50);

N = 15;
BC_g = betweenness_wei(g_mat)/[(N-1)*(N-2)];
BC_b = betweenness_wei(b_mat)/[(N-1)*(N-2)];

[g_Ci,g_Q] = modularity_und(g_mat);
g_Z = module_degree_zscore(g_mat,g_Ci);
g_P = participation_coef(g_mat,g_Ci);

[b_Ci,b_Q] = modularity_und(b_mat);
b_Z = module_degree_zscore(b_mat,b_Ci);
b_P = participation_coef(b_mat,b_Ci);

BC = [BC_g';BC_b'];
Q = [g_Q;b_Q];
Z = [g_Z';b_Z'];
P = [g_P';b_P'];
M = [g_Ci';b_Ci'];

b_Ci = b_Ci';
g_Ci = g_Ci';

% figure;
hold on;scatter(g_P,g_Z,'MarkerEdgeColor',[.0  0 .7],'LineWidth',1.2);
;hold on;scatter(b_P,b_Z,'x','MarkerEdgeColor',[.0 0 .7],'LineWidth',1.2);
;ylim([-4 4]);xlim([0 1])

% figure;
hold on;scatter([1:15],BC_g,'MarkerEdgeColor',[.0 0 .7],'LineWidth',1.2);
hold on;plot([1:15],BC_b,'x','MarkerEdgeColor',[.0 0 .7],'LineWidth',1.2);

%% MVGC
clear all

bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];
good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];

M = 15;
N = 15;
idx = eye(M,N);

good_sum = zeros(15,15);

for k = 1:size(good,2);
    num = good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta_alpha');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta_alpha');
    
    good_sum = good_sum + MVGC_theta_alpha;
    
end;

bad_sum = zeros(15,15);

for k = 1:size(bad,2);
    num = bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta_alpha');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta_alpha');
    
    bad_sum = bad_sum + MVGC_theta_alpha;
    
end;

g_mat = good_sum./size(good,2);
b_mat = bad_sum./size(bad,2);

chans = {'F3';'FC3';'C5';'C3';'CP3';'P3';'O1';'Cz';'F4';'FC4';'C4';'C6';'CP4';'P4';'O2'};
figure;
subplot(3,2,1);imagesc(g_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 8);xtickangle(50);
ylabel('MVGC - theta + alpha','FontSize', 15)
title('BCI-literacy','FontSize', 20);
subplot(3,2,2);imagesc(b_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 8);xtickangle(50);
title('BCI-illiteracy','FontSize', 20);

N = 15;
BC_g = betweenness_wei(g_mat)/[(N-1)*(N-2)];
BC_b = betweenness_wei(b_mat)/[(N-1)*(N-2)];

[g_Ci,g_Q] = modularity_und(g_mat);
g_Z = module_degree_zscore(g_mat,g_Ci);
g_P = participation_coef(g_mat,g_Ci);

[b_Ci,b_Q] = modularity_und(b_mat);
b_Z = module_degree_zscore(b_mat,b_Ci);
b_P = participation_coef(b_mat,b_Ci);

BC = [BC_g';BC_b'];
Q = [g_Q;b_Q];
Z = [g_Z';b_Z'];
P = [g_P';b_P'];
M = [g_Ci';b_Ci'];

b_Ci = b_Ci';
g_Ci = g_Ci';

% figure;
hold on; scatter(g_P,g_Z,'MarkerEdgeColor',[.9 .9 0],'LineWidth',1.5);
;hold on;scatter(b_P,b_Z,'x','MarkerEdgeColor',[.9 .9 0],'LineWidth',1.5);
;ylim([-4 4]);xlim([0 1]);

scatter([1:15],BC_g,'MarkerEdgeColor',[.9 .9 0],'LineWidth',1.2);
hold on;plot([1:15],BC_b,'x','MarkerEdgeColor',[.9 .9 0],'LineWidth',1.2);

%% BVGC
clear all

bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];
good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];

M = 15;
N = 15;
idx = eye(M,N);

good_sum = zeros(15,15);

for k = 1:size(good,2);
    num = good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\BVGC\BVGC_theta_alpha');
    l_name = sprintf('BVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\BVGC\BVGC_theta_alpha');
    
    good_sum = good_sum + BVGC_theta_alpha;
    
end;

bad_sum = zeros(15,15);

for k = 1:size(bad,2);
    num = bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\BVGC\BVGC_theta_alpha');
    l_name = sprintf('BVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\BVGC\BVGC_theta_alpha');
    
    bad_sum = bad_sum + BVGC_theta_alpha;
    
end;

g_mat = good_sum./size(good,2);
b_mat = bad_sum./size(bad,2);

chans = {'F3';'FC3';'C5';'C3';'CP3';'P3';'O1';'Cz';'F4';'FC4';'C4';'C6';'CP4';'P4';'O2'};

subplot(3,2,3);imagesc(g_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 8);xtickangle(50);
ylabel('BVGC - theta + alpha','FontSize', 14)
subplot(3,2,4);imagesc(b_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 8);xtickangle(50);

N = 15;
BC_g = betweenness_wei(g_mat)/[(N-1)*(N-2)];
BC_b = betweenness_wei(b_mat)/[(N-1)*(N-2)];

[g_Ci,g_Q] = modularity_und(g_mat);
g_Z = module_degree_zscore(g_mat,g_Ci);
g_P = participation_coef(g_mat,g_Ci);

[b_Ci,b_Q] = modularity_und(b_mat);
b_Z = module_degree_zscore(b_mat,b_Ci);
b_P = participation_coef(b_mat,b_Ci);

BC = [BC_g';BC_b'];
Q = [g_Q;b_Q];
Z = [g_Z';b_Z'];
P = [g_P';b_P'];
M = [g_Ci';b_Ci'];

b_Ci = b_Ci';
g_Ci = g_Ci';

% figure;
hold on; scatter(g_P,g_Z,'MarkerEdgeColor',[0 .9 .9],'LineWidth',1.5);
;hold on;scatter(b_P,b_Z,'x','MarkerEdgeColor',[0 .9 .9],'LineWidth',1.5);
;ylim([-4 4]);xlim([0 1]);

hold on;scatter([1:15],BC_g,'MarkerEdgeColor',[0 .9 .9],'LineWidth',1.2);
hold on;plot([1:15],BC_b,'x','MarkerEdgeColor',[0 .9 .9],'LineWidth',1.2);


%% PSI

clear all

bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];
good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];

M = 15;
N = 15;
idx = eye(M,N);

good_sum = zeros(15,15);

for k = 1:size(good,2);
    num = good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\psi\psi_alpha_2s_FDR');
    l_name = sprintf('pertest_psi_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\psi\psi_alpha_2s_FDR');
    
    mat = psi_mat_alpha;
    mat(mat<0) = 0; 
    
    good_sum = good_sum + mat;
    
end;

g_mat = good_sum./size(good,2);

bad_sum = zeros(15,15);

for k = 1:size(bad,2);
    num = bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\psi\psi_alpha_2s_FDR');
    l_name = sprintf('pertest_psi_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\psi\psi_alpha_2s_FDR');
    
    mat = psi_mat_alpha;
    mat(mat<0) = 0; 
    
    bad_sum = bad_sum + mat;
    
end;

b_mat = bad_sum./size(bad,2);

subplot(3,2,5);imagesc(g_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 10);xtickangle(55);
ylabel('PSI - alpha','FontSize', 14)
subplot(3,2,6);imagesc(b_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 8);xtickangle(50);

N = 15;
BC_g = betweenness_wei(g_mat)/[(N-1)*(N-2)];
BC_b = betweenness_wei(b_mat)/[(N-1)*(N-2)];

[g_Ci,g_Q] = modularity_und(g_mat);
g_Z = module_degree_zscore(g_mat,g_Ci);
g_P = participation_coef(g_mat,g_Ci);

[b_Ci,b_Q] = modularity_und(b_mat);
b_Z = module_degree_zscore(b_mat,b_Ci);
b_P = participation_coef(b_mat,b_Ci);

BC = [BC_g';BC_b'];
Q = [g_Q;b_Q];
Z = [g_Z';b_Z'];
P = [g_P';b_P'];
M = [g_Ci';b_Ci'];

b_Ci = b_Ci';
g_Ci = g_Ci';

hold on;;scatter(g_P,g_Z,'MarkerEdgeColor',[1 0 1],'LineWidth',1.2);
;hold on;scatter(b_P,b_Z,'x','MarkerEdgeColor',[1 0 1],'LineWidth',1.2);
;ylim([-4 4]);xlim([0 1])

yl=yline(2.5,'--',{'Threshold for Hub status'});yl.FontSize = 17;yl=yline(0,'-');yl.LineWidth = 1.5;
legend('COH - alpha','','iCOH - alpha','','PLV - alpha','','MVGC - theta+alpha','','BVGC - theta+alpha','','PSI - alpha','');
xlabel('Participation Coeficient','Fontsize',18) 
ylabel('Within-module degree (Z-score)','Fontsize',18)


hold on;;scatter([1:15],BC_g,'MarkerEdgeColor',[1 0 1],'LineWidth',1.2);
hold on;plot([1:15],BC_b,'x','MarkerEdgeColor',[1 0 1],'LineWidth',1.2);
ylim([0 1])

legend('COH - alpha','','iCOH - alpha','','PLV - alpha','','MVGC - theta+alpha','','BVGC - theta+alpha','','PSI - alpha','');
ylabel('Betweenness Centrality','Fontsize',18) 
set(gca,'FontSize', 8)
