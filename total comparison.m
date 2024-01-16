cho_good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];
cho_bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];

k_good = [1,2,3,5,9,17,18,19,21,22,23,28,29,32,33,36,37,39,43,44,45,52];
k_bad = [4,6,7,8,10,11,12,16,25,26,27,30,31,34,35,38,40,41,42,47,50,51,53,54];

k2_good = [2,3,5,7,9,15,17,18,19,21,23,28,29,32,33,36,37,39,43,44,45,47,49];
k2_bad = [4,8,11,16,20,22,24,25,26,27,30,34,38,40,41,48,50,51,53,54];

for k = 1:size(k_good,2);
    num = k_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    
     mat = plv_mat_alpha;
    
    good_CC_alpha_k(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    good_CL_alpha_k(1,k) = charpath(1./D);
    good_GE_alpha_k(1,k) = efficiency_wei(mat);
    good_LE_alpha_k(1,k) = mean(efficiency_wei(mat,2));
    good_str_alpha_k(1,k) = mean(strengths_und(mat));
    
end;

for k = 1:size(k_bad,2);
    num = k_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    
     mat = plv_mat_alpha;
    
    bad_CC_alpha_k(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    bad_CL_alpha_k(1,k) = charpath(1./D);
    bad_GE_alpha_k(1,k) = efficiency_wei(mat);
    bad_LE_alpha_k(1,k) = mean(efficiency_wei(mat,2));
    bad_str_alpha_k(1,k) = mean(strengths_und(mat));
 
end;

for k = 1:size(k2_good,2);
    num = k2_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv2\plv_alpha');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv2\plv_alpha');
    
     mat = plv_mat_alpha;
    
    good_CC_alpha_k2(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    good_CL_alpha_k2(1,k) = charpath(1./D);
    good_GE_alpha_k2(1,k) = efficiency_wei(mat);
    good_LE_alpha_k2(1,k) = mean(efficiency_wei(mat,2));
    good_str_alpha_k2(1,k) = mean(strengths_und(mat));
    
end;

for k = 1:size(k2_bad,2);
    num = k2_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv2\plv_alpha');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv2\plv_alpha');
    
     mat = plv_mat_alpha;
    
    bad_CC_alpha_k2(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    bad_CL_alpha_k2(1,k) = charpath(1./D);
    bad_GE_alpha_k2(1,k) = efficiency_wei(mat);
    bad_LE_alpha_k2(1,k) = mean(efficiency_wei(mat,2));
    bad_str_alpha_k2(1,k) = mean(strengths_und(mat));
 
end;


for k = 1:size(cho_good,2);
    num = cho_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\plv\plv_alpha_2s_FDR');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\plv\plv_alpha_2s_FDR');
    
     mat = plv_mat_alpha;
    
    good_CC_alpha_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    good_CL_alpha_cho(1,k) = charpath(1./D);
    good_GE_alpha_cho(1,k) = efficiency_wei(mat);
    good_LE_alpha_cho(1,k) = mean(efficiency_wei(mat,2));
    good_str_alpha_cho(1,k) = mean(strengths_und(mat));
    
end;

for k = 1:size(cho_bad,2);
    num = cho_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\plv\plv_alpha_2s_FDR');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\plv\plv_alpha_2s_FDR');
    
     mat = plv_mat_alpha;
    
    bad_CC_alpha_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    bad_CL_alpha_cho(1,k) = charpath(1./D);
    bad_GE_alpha_cho(1,k) = efficiency_wei(mat);
    bad_LE_alpha_cho(1,k) = mean(efficiency_wei(mat,2));
    bad_str_alpha_cho(1,k) = mean(strengths_und(mat));
 
end;

t_good_CC = [good_CC_alpha_cho,good_CC_alpha_k,good_CC_alpha_k2];
t_good_CL = [good_CL_alpha_cho,good_CL_alpha_k,good_CL_alpha_k2];
t_good_GE = [good_GE_alpha_cho,good_GE_alpha_k,good_GE_alpha_k2];
t_good_LE = [good_LE_alpha_cho,good_LE_alpha_k,good_LE_alpha_k2];
t_good_str = [good_str_alpha_cho,good_str_alpha_k,good_str_alpha_k2];

t_bad_CC = [bad_CC_alpha_cho,bad_CC_alpha_k,bad_CC_alpha_k2];
t_bad_CL = [bad_CL_alpha_cho,bad_CL_alpha_k,bad_CL_alpha_k2];
t_bad_GE = [bad_GE_alpha_cho,bad_GE_alpha_k,bad_GE_alpha_k2];
t_bad_LE = [bad_LE_alpha_cho,bad_LE_alpha_k,bad_LE_alpha_k2];
t_bad_str = [bad_str_alpha_cho,bad_str_alpha_k,bad_str_alpha_k2];

gf_result = [ranksum(t_good_CC,t_bad_CC),ranksum(t_good_CL,t_bad_CL),ranksum(t_good_GE,t_bad_GE),ranksum(t_good_LE,t_bad_LE),ranksum(t_bad_str,t_good_str)]
[h,p1] = ttest2(t_good_CC,t_bad_CC);
[h,p2] = ttest2(t_good_CL,t_bad_CL);
[h,p3] = ttest2(t_good_GE,t_bad_GE);
[h,p4] = ttest2(t_good_LE,t_bad_LE);
[h,p5] = ttest2(t_bad_str,t_good_str);
gf_tresult = [p1,p2,p3,p4,p5]

good_CC_mean = mean(t_good_CC); good_CC_std = std(t_good_CC); bad_CC_mean = mean(t_bad_CC); bad_CC_std = std(t_bad_CC); 
good_CL_mean = mean(t_good_CL); good_CL_std = std(t_good_CL); bad_CL_mean = mean(t_bad_CL); bad_CL_std = std(t_bad_CL);
good_GE_mean = mean(t_good_GE); good_GE_std = std(t_good_GE); bad_GE_mean = mean(t_bad_GE); bad_GE_std = std(t_bad_GE); 
good_LE_mean = mean(t_good_LE); good_LE_std = std(t_good_LE); bad_LE_mean = mean(t_bad_LE); bad_LE_std = std(t_bad_LE);
good_str_mean = mean(t_good_str); good_str_std = std(t_good_str); bad_str_mean = mean(t_bad_str); bad_str_std = std(t_bad_str);

good_mean = [good_CC_mean,good_CL_mean,good_GE_mean,good_LE_mean,good_str_mean];
good_str = [good_CC_std,good_CL_std,good_GE_std,good_LE_std,good_str_std];
bad_mean = [bad_CC_mean,bad_CL_mean,bad_GE_mean,bad_LE_mean,bad_str_mean];
bad_str = [bad_CC_std,bad_CL_std,bad_GE_std,bad_LE_std,bad_str_std];

figure;
subplot(2,5,1);boxplot(t_good_CC);subplot(2,5,6);boxplot(t_bad_CC);
subplot(2,5,2);boxplot(t_good_CL);subplot(2,5,7);boxplot(t_bad_CL);
subplot(2,5,3);boxplot(t_good_GE);subplot(2,5,8);boxplot(t_bad_GE);
subplot(2,5,4);boxplot(t_good_LE);subplot(2,5,9);boxplot(t_bad_LE);
subplot(2,5,5);boxplot(t_good_str);subplot(2,5,10);boxplot(t_bad_str);

%%

subs_k = [1:54];

result_k = [76;89.6666666666667;90.3333333333333;59.6666666666667;87.3333333333333;61.6666666666667;55.3333333333333;59;73;61;55.6666666666667;59.3333333333333;67.6666666666667;69.3333333333333;62.6666666666667;58.3333333333333;71.6666666666667;92.6666666666667;72.3333333333333;64;98;70;95.0000000000000;64.3333333333333;46.6666666666667;53.3333333333333;54.6666666666667;90;74.6666666666667;59.6666666666667;60.6666666666667;96.6666666666667;95;49.0000000000000;49.3333333333333;95.0000000000000;90.3333333333333;56;77.3333333333333;53.6666666666667;53.6666666666667;61;78.3333333333333;88.0000000000000;90.3333333333333;62;53;68;69;61.6666666666667;52.6666666666667;77.6666666666667;53.3333333333333;55.6666666666667];

for k = 1:size(subs_k,2);
    num = subs_k(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    
     mat = plv_mat_alpha;
     
    CC_k(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    CL_k(1,k) = charpath(1./D);
    GE_k(1,k) = efficiency_wei(mat);
    LE_k(1,k) = mean(efficiency_wei(mat,2));
    str_k(1,k) = mean(strengths_und(mat));

end;

subs_k2 = [1:54];

result_k2 = [64;88;91.6666666666667;58;85;69;72.3333333333333;60.3333333333333;72.6666666666667;63.3333333333333;54.3333333333333;66.3333333333333;63.6666666666667;66;71;48.6666666666667;70.6666666666667;86.3333333333333;73.3333333333333;59.3333333333333;97.0000000000000;60.6666666666667;79.0000000000000;57;50.6666666666667;54.6666666666667;50.6666666666667;92.0000000000000;95.3333333333333;50.3333333333333;65;96;96.6666666666667;50.3333333333333;69.3333333333333;99;98;59.6666666666667;77.6666666666667;57;53.3333333333333;64.3333333333333;70.3333333333333;92.6666666666667;88.3333333333333;63.3333333333333;70.6666666666667;57.6666666666667;74.6666666666667;44.3333333333333;49.3333333333333;67.3333333333333;58;54.0000000000000];

for k = 1:size(subs_k2,2);
    num = subs_k2(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv2\plv_alpha');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv2\plv_alpha');
    
     mat = plv_mat_alpha;
     
    CC_k2(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    CL_k2(1,k) = charpath(1./D);
    GE_k2(1,k) = efficiency_wei(mat);
    LE_k2(1,k) = mean(efficiency_wei(mat,2));
    str_k2(1,k) = mean(strengths_und(mat));

end;

subs_cho = [1:52];

result_cho = [71.4444444444445;56.6805555555556;83.0694444444444;78.9583333333333;76.9027777777778;76.0000000000000;53.1597222222223;57.6388888888889;63.1365740740741;74.2361111111111;61.1250000000000;63.0416666666667;62.9583333333333;96.1111111111111;70.9861111111111;52.1388888888889;47.9027777777778;59.7083333333333;60.8333333333334;69.3333333333333;75.1944444444444;57.6944444444445;78.8888888888889;60.3472222222222;64.5000000000000;71.4444444444444;58.0694444444444;63.2222222222222;55.4027777777778;61.1666666666667;66.4166666666667;56.7638888888889;55.8055555555556;60.1805555555556;79.1805555555556;66.4722222222222;75.3333333333333;54.5694444444445;62.4305555555556;52.5833333333333;81.9722222222222;59.1944444444444;95.6527777777778;73.6388888888889;54.1111111111111;79.6527777777778;63.6250000000000;78.7222222222222;72.5416666666667;84.5972222222222;57.2916666666666;68.3333333333333];

for k = 1:size(subs_cho,2);
    num = subs_cho(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\plv\plv_alpha_2s_FDR');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\plv\plv_alpha_2s_FDR');
    
     mat = plv_mat_alpha;
     
    CC_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    CL_cho(1,k) = charpath(1./D);
    GE_cho(1,k) = efficiency_wei(mat);
    LE_cho(1,k) = mean(efficiency_wei(mat,2));
    str_cho(1,k) = mean(strengths_und(mat));

end;

CC = [CC_cho,CC_k,CC_k2];
CL = [CL_cho,CL_k,CL_k2];
GE = [GE_cho,GE_k,GE_k2];
LE = [LE_cho,LE_k,LE_k2];
str = [str_cho,str_k,str_k2];

result = [result_cho',result_k',result_k2'];

[CC_r,CC_p] = corrcoef(CC,result);
[CL_r,CL_p] = corrcoef(CL,result);
[LE_r,LE_p] = corrcoef(LE,result);
[GE_r,GE_p] = corrcoef(GE,result);
[str_r,str_p] = corrcoef(str,result);

corr_r = [CC_r(1,2);CL_r(1,2);GE_r(1,2);LE_r(1,2);str_r(1,2)]';
corr_p = [CC_p(1,2);CL_p(1,2);GE_p(1,2);LE_p(1,2);str_p(1,2)]';

y = result;
X = [ones(length(y),1) CL'];

% ind_g1 = CC > 0.43818 & CC <= 0.43820 ;
% ind_g2 = CC > 0.097385 & CC <= 0.097386;
% ind_g = ind_g1 + ind_g2;
% ind_b = CC > 0.4270 & CC <= 0.4271;
% ind = ind_g + ind_b;

[27.5232334512613]
[29.5865853283844]
ind_g1 = CL > 27.52 & CL <= 27.53 ;
ind_g2 = CL > 29.58 & CL <= 29.59;
ind = ind_g1 + ind_g2;

figure;
scatter(X((ind~=1),2),y(ind~=1));
h = lsline;
h.Color ='b'
h.LineWidth = 2;
hold on
scatter(X((ind~=0),2),y(ind~=0),'red');
xlabel('CPL','Fontsize',14 )
ylabel("MI classificiation accuracy[%]",'Fontsize',14 )
legend({"Normal Points","Least-squares line","Outliers"})
title('Correlation: PLV & CPL')

[R,P] = corrcoef(X((ind~=1),2),y(ind~=1),'Alpha',0.05)

%% COH

cho_good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];
cho_bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];

k_good = [1,2,3,5,9,17,18,19,21,22,23,28,29,32,33,36,37,39,43,44,45,52];
k_bad = [4,6,7,8,10,11,12,16,25,26,27,30,31,34,35,38,40,41,42,47,50,51,53,54];

k2_good = [2,3,5,7,9,15,17,18,19,21,23,28,29,32,33,36,37,39,43,44,45,47,49];
k2_bad = [4,8,11,16,20,22,24,25,26,27,30,34,38,40,41,48,50,51,53,54];

for k = 1:size(k_good,2);
    num = k_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh\coh_alpha');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh\coh_alpha');
    
     mat = coh_mat_alpha;
    
    good_CC_alpha_k(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    good_CL_alpha_k(1,k) = charpath(1./D);
    good_GE_alpha_k(1,k) = efficiency_wei(mat);
    good_LE_alpha_k(1,k) = mean(efficiency_wei(mat,2));
    good_str_alpha_k(1,k) = mean(strengths_und(mat));
    
end;

for k = 1:size(k_bad,2);
    num = k_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh\coh_alpha');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh\coh_alpha');
    
     mat = coh_mat_alpha;
    
    bad_CC_alpha_k(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    bad_CL_alpha_k(1,k) = charpath(1./D);
    bad_GE_alpha_k(1,k) = efficiency_wei(mat);
    bad_LE_alpha_k(1,k) = mean(efficiency_wei(mat,2));
    bad_str_alpha_k(1,k) = mean(strengths_und(mat));
 
end;

for k = 1:size(k2_good,2);
    num = k2_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh2\coh_alpha');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh2\coh_alpha');
    
     mat = coh_mat_alpha;
    
    good_CC_alpha_k2(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    good_CL_alpha_k2(1,k) = charpath(1./D);
    good_GE_alpha_k2(1,k) = efficiency_wei(mat);
    good_LE_alpha_k2(1,k) = mean(efficiency_wei(mat,2));
    good_str_alpha_k2(1,k) = mean(strengths_und(mat));
    
end;

for k = 1:size(k2_bad,2);
    num = k2_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh2\coh_alpha');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh2\coh_alpha');
    
     mat = coh_mat_alpha;
    
    bad_CC_alpha_k2(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    bad_CL_alpha_k2(1,k) = charpath(1./D);
    bad_GE_alpha_k2(1,k) = efficiency_wei(mat);
    bad_LE_alpha_k2(1,k) = mean(efficiency_wei(mat,2));
    bad_str_alpha_k2(1,k) = mean(strengths_und(mat));
 
end;


for k = 1:size(cho_good,2);
    num = cho_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\coh\coh_alpha_2s_FDR');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\coh\coh_alpha_2s_FDR');
    
     mat = coh_mat_alpha;
    
    good_CC_alpha_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    good_CL_alpha_cho(1,k) = charpath(1./D);
    good_GE_alpha_cho(1,k) = efficiency_wei(mat);
    good_LE_alpha_cho(1,k) = mean(efficiency_wei(mat,2));
    good_str_alpha_cho(1,k) = mean(strengths_und(mat));
    
end;

for k = 1:size(cho_bad,2);
    num = cho_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\coh\coh_alpha_2s_FDR');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\coh\coh_alpha_2s_FDR');
    
     mat = coh_mat_alpha;
    
    bad_CC_alpha_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    bad_CL_alpha_cho(1,k) = charpath(1./D);
    bad_GE_alpha_cho(1,k) = efficiency_wei(mat);
    bad_LE_alpha_cho(1,k) = mean(efficiency_wei(mat,2));
    bad_str_alpha_cho(1,k) = mean(strengths_und(mat));
 
end;

t_good_CC = [good_CC_alpha_cho,good_CC_alpha_k,good_CC_alpha_k2];
t_good_CL = [good_CL_alpha_cho,good_CL_alpha_k,good_CL_alpha_k2];
t_good_GE = [good_GE_alpha_cho,good_GE_alpha_k,good_GE_alpha_k2];
t_good_LE = [good_LE_alpha_cho,good_LE_alpha_k,good_LE_alpha_k2];
t_good_str = [good_str_alpha_cho,good_str_alpha_k,good_str_alpha_k2];

t_bad_CC = [bad_CC_alpha_cho,bad_CC_alpha_k,bad_CC_alpha_k2];
t_bad_CL = [bad_CL_alpha_cho,bad_CL_alpha_k,bad_CL_alpha_k2];
t_bad_GE = [bad_GE_alpha_cho,bad_GE_alpha_k,bad_GE_alpha_k2];
t_bad_LE = [bad_LE_alpha_cho,bad_LE_alpha_k,bad_LE_alpha_k2];
t_bad_str = [bad_str_alpha_cho,bad_str_alpha_k,bad_str_alpha_k2];

gf_result = [ranksum(t_good_CC,t_bad_CC),ranksum(t_good_CL,t_bad_CL),ranksum(t_good_GE,t_bad_GE),ranksum(t_good_LE,t_bad_LE),ranksum(t_bad_str,t_good_str)]
[h,p1] = ttest2(t_good_CC,t_bad_CC);
[h,p2] = ttest2(t_good_CL,t_bad_CL);
[h,p3] = ttest2(t_good_GE,t_bad_GE);
[h,p4] = ttest2(t_good_LE,t_bad_LE);
[h,p5] = ttest2(t_bad_str,t_good_str);
gf_tresult = [p1,p2,p3,p4,p5]

good_CC_mean = mean(t_good_CC); good_CC_std = std(t_good_CC); bad_CC_mean = mean(t_bad_CC); bad_CC_std = std(t_bad_CC); 
good_CL_mean = mean(t_good_CL); good_CL_std = std(t_good_CL); bad_CL_mean = mean(t_bad_CL); bad_CL_std = std(t_bad_CL);
good_GE_mean = mean(t_good_GE); good_GE_std = std(t_good_GE); bad_GE_mean = mean(t_bad_GE); bad_GE_std = std(t_bad_GE); 
good_LE_mean = mean(t_good_LE); good_LE_std = std(t_good_LE); bad_LE_mean = mean(t_bad_LE); bad_LE_std = std(t_bad_LE);
good_str_mean = mean(t_good_str); good_str_std = std(t_good_str); bad_str_mean = mean(t_bad_str); bad_str_std = std(t_bad_str);

good_mean = [good_CC_mean,good_CL_mean,good_GE_mean,good_LE_mean,good_str_mean];
good_str = [good_CC_std,good_CL_std,good_GE_std,good_LE_std,good_str_std];
bad_mean = [bad_CC_mean,bad_CL_mean,bad_GE_mean,bad_LE_mean,bad_str_mean];
bad_str = [bad_CC_std,bad_CL_std,bad_GE_std,bad_LE_std,bad_str_std];

figure;
subplot(2,5,1);boxplot(t_good_CC);subplot(2,5,6);boxplot(t_bad_CC);
subplot(2,5,2);boxplot(t_good_CL);subplot(2,5,7);boxplot(t_bad_CL);
subplot(2,5,3);boxplot(t_good_GE);subplot(2,5,8);boxplot(t_bad_GE);
subplot(2,5,4);boxplot(t_good_LE);subplot(2,5,9);boxplot(t_bad_LE);
subplot(2,5,5);boxplot(t_good_str);subplot(2,5,10);boxplot(t_bad_str);

%% COH

subs_k = [1:54];

result_k = [76;89.6666666666667;90.3333333333333;59.6666666666667;87.3333333333333;61.6666666666667;55.3333333333333;59;73;61;55.6666666666667;59.3333333333333;67.6666666666667;69.3333333333333;62.6666666666667;58.3333333333333;71.6666666666667;92.6666666666667;72.3333333333333;64;98;70;95.0000000000000;64.3333333333333;46.6666666666667;53.3333333333333;54.6666666666667;90;74.6666666666667;59.6666666666667;60.6666666666667;96.6666666666667;95;49.0000000000000;49.3333333333333;95.0000000000000;90.3333333333333;56;77.3333333333333;53.6666666666667;53.6666666666667;61;78.3333333333333;88.0000000000000;90.3333333333333;62;53;68;69;61.6666666666667;52.6666666666667;77.6666666666667;53.3333333333333;55.6666666666667];

for k = 1:size(subs_k,2);
    num = subs_k(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh\coh_alpha');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh\coh_alpha');
    
     mat = coh_mat_alpha;
     
    CC_k(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    CL_k(1,k) = charpath(1./D);
    GE_k(1,k) = efficiency_wei(mat);
    LE_k(1,k) = mean(efficiency_wei(mat,2));
    str_k(1,k) = mean(strengths_und(mat));

end;

subs_k2 = [1:54];

result_k2 = [64;88;91.6666666666667;58;85;69;72.3333333333333;60.3333333333333;72.6666666666667;63.3333333333333;54.3333333333333;66.3333333333333;63.6666666666667;66;71;48.6666666666667;70.6666666666667;86.3333333333333;73.3333333333333;59.3333333333333;97.0000000000000;60.6666666666667;79.0000000000000;57;50.6666666666667;54.6666666666667;50.6666666666667;92.0000000000000;95.3333333333333;50.3333333333333;65;96;96.6666666666667;50.3333333333333;69.3333333333333;99;98;59.6666666666667;77.6666666666667;57;53.3333333333333;64.3333333333333;70.3333333333333;92.6666666666667;88.3333333333333;63.3333333333333;70.6666666666667;57.6666666666667;74.6666666666667;44.3333333333333;49.3333333333333;67.3333333333333;58;54.0000000000000];

for k = 1:size(subs_k2,2);
    
    num = subs_k2(k);
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh2\coh_alpha');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh2\coh_alpha');
    
     mat = coh_mat_alpha;
     
    CC_k2(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    CL_k2(1,k) = charpath(1./D);
    GE_k2(1,k) = efficiency_wei(mat);
    LE_k2(1,k) = mean(efficiency_wei(mat,2));
    str_k2(1,k) = mean(strengths_und(mat));

end;

subs_cho = [1:52];

result_cho = [71.4444444444445;56.6805555555556;83.0694444444444;78.9583333333333;76.9027777777778;76.0000000000000;53.1597222222223;57.6388888888889;63.1365740740741;74.2361111111111;61.1250000000000;63.0416666666667;62.9583333333333;96.1111111111111;70.9861111111111;52.1388888888889;47.9027777777778;59.7083333333333;60.8333333333334;69.3333333333333;75.1944444444444;57.6944444444445;78.8888888888889;60.3472222222222;64.5000000000000;71.4444444444444;58.0694444444444;63.2222222222222;55.4027777777778;61.1666666666667;66.4166666666667;56.7638888888889;55.8055555555556;60.1805555555556;79.1805555555556;66.4722222222222;75.3333333333333;54.5694444444445;62.4305555555556;52.5833333333333;81.9722222222222;59.1944444444444;95.6527777777778;73.6388888888889;54.1111111111111;79.6527777777778;63.6250000000000;78.7222222222222;72.5416666666667;84.5972222222222;57.2916666666666;68.3333333333333];

for k = 1:size(subs_cho,2);
    num = subs_cho(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\coh\coh_alpha_2s_FDR');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\coh\coh_alpha_2s_FDR');
    
     mat = coh_mat_alpha;
     
    CC_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    CL_cho(1,k) = charpath(1./D);
    GE_cho(1,k) = efficiency_wei(mat);
    LE_cho(1,k) = mean(efficiency_wei(mat,2));
    str_cho(1,k) = mean(strengths_und(mat));

end;

CC = [CC_cho,CC_k,CC_k2];
CL = [CL_cho,CL_k,CL_k2];
GE = [GE_cho,GE_k,GE_k2];
LE = [LE_cho,LE_k,LE_k2];
str = [str_cho,str_k,str_k2];

result = [result_cho',result_k',result_k2'];

[CC_r,CC_p] = corrcoef(CC,result);
[CL_r,CL_p] = corrcoef(CL,result);
[LE_r,LE_p] = corrcoef(LE,result);
[GE_r,GE_p] = corrcoef(GE,result);
[str_r,str_p] = corrcoef(str,result);

corr_r = [CC_r(1,2);CL_r(1,2);GE_r(1,2);LE_r(1,2);str_r(1,2)]';
corr_p = [CC_p(1,2);CL_p(1,2);GE_p(1,2);LE_p(1,2);str_p(1,2)]';

y = result;
X = [ones(length(y),1) CL'];

% ind_g1 = CC > 0.43818 & CC <= 0.43820 ;
% ind_g2 = CC > 0.097385 & CC <= 0.097386;
% ind_g = ind_g1 + ind_g2;
% ind_b = CC > 0.4270 & CC <= 0.4271;
% ind = ind_g + ind_b;

[18.4139287414084]
[23.3929874197955]
[24.1167467513566]

ind_g1 = CL > 18.4139 & CL <= 18.4140 ;
ind_g2 = CL > 23.39 & CL <= 23.40;
ind_g3 = CL > 24.11 & CL <= 24.12;
ind_g4 = CL > 25.69 & CL <= 25.70;

ind = ind_g1 + ind_g2 + ind_g3 + ind_g4;

figure;
scatter(X((ind~=1),2),y(ind~=1));
h = lsline;
h.Color ='b'
h.LineWidth = 2;
hold on
scatter(X((ind~=0),2),y(ind~=0),'red');
xlabel('CPL','Fontsize',14 )
ylabel("MI classificiation accuracy[%]",'Fontsize',14 )
legend({"Normal Points","Least-squares line","Outliers"})
title('Correlation: COH & CPL')

[R,P] = corrcoef(X((ind~=1),2),y(ind~=1),'Alpha',0.05)

%% COH matrix
cho_good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];
cho_bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];

k_good = [1,2,3,5,9,17,18,19,21,22,23,28,29,32,33,36,37,39,43,44,45,52];
k_bad = [4,6,7,8,10,11,12,16,25,26,27,30,31,34,35,38,40,41,42,47,50,51,53,54];

k2_good = [2,3,5,7,9,15,17,18,19,21,23,28,29,32,33,36,37,39,43,44,45,47,49];
k2_bad = [4,8,11,16,20,22,24,25,26,27,30,34,38,40,41,48,50,51,53,54];

good_mat = zeros(15,15);
bad_mat = zeros(15,15);

for k = 1:size(k_good,2);
    num = k_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh\coh_alpha');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh\coh_alpha');
    
     good_mat = good_mat + coh_mat_alpha;
    
    
end;

for k = 1:size(k_bad,2);
    num = k_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh\coh_alpha');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh\coh_alpha');
    
     bad_mat = bad_mat + coh_mat_alpha;
     
end;

for k = 1:size(k2_good,2);
    num = k2_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh2\coh_alpha');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh2\coh_alpha');
    
     good_mat = good_mat + coh_mat_alpha;
    
end;

for k = 1:size(k2_bad,2);
    num = k2_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh2\coh_alpha');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh2\coh_alpha');
    
     bad_mat = bad_mat + coh_mat_alpha;
 
end;


for k = 1:size(cho_good,2);
    num = cho_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\coh\coh_alpha_2s_FDR');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\coh\coh_alpha_2s_FDR');
    
    good_mat = good_mat + coh_mat_alpha;
  
    
end;

for k = 1:size(cho_bad,2);
    num = cho_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\coh\coh_alpha_2s_FDR');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\coh\coh_alpha_2s_FDR');
    
    bad_mat = bad_mat + coh_mat_alpha;
    
 
end;

chans = {'F3';'FC3';'C5';'C3';'CP3';'P3';'O1';'Cz';'F4';'FC4';'C4';'C6';'CP4';'P4';'O2'};
figure;
g_mat = good_mat./65;;
b_mat = bad_mat./60;
subplot(2,2,1);imagesc(g_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 8);xtickangle(50);
ylabel('COH - alpha','FontSize', 15)
title('BCI-literacy','FontSize', 20);
subplot(2,2,2);imagesc(b_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 8);xtickangle(50);
title('BCI-illiteracy','FontSize', 20);

%% PLV

cho_good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];
cho_bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];

k_good = [1,2,3,5,9,17,18,19,21,22,23,28,29,32,33,36,37,39,43,44,45,52];
k_bad = [4,6,7,8,10,11,12,16,25,26,27,30,31,34,35,38,40,41,42,47,50,51,53,54];

k2_good = [2,3,5,7,9,15,17,18,19,21,23,28,29,32,33,36,37,39,43,44,45,47,49];
k2_bad = [4,8,11,16,20,22,24,25,26,27,30,34,38,40,41,48,50,51,53,54];

good_mat = zeros(15,15);
bad_mat = zeros(15,15);

for k = 1:size(k_good,2);
    num = k_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    
     good_mat = good_mat + plv_mat_alpha;
    
    
end;

for k = 1:size(k_bad,2);
    num = k_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    
     bad_mat = bad_mat + plv_mat_alpha;
     
end;

for k = 1:size(k2_good,2);
    num = k2_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    
     good_mat = good_mat + plv_mat_alpha;
    
end;

for k = 1:size(k2_bad,2);
    num = k2_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    
     bad_mat = bad_mat + plv_mat_alpha;
 
end;


for k = 1:size(cho_good,2);
    num = cho_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    
    good_mat = good_mat + plv_mat_alpha;
  
    
end;

for k = 1:size(cho_bad,2);
    num = cho_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');;
    
    bad_mat = bad_mat + plv_mat_alpha;
    
 
end;

chans = {'F3';'FC3';'C5';'C3';'CP3';'P3';'O1';'Cz';'F4';'FC4';'C4';'C6';'CP4';'P4';'O2'};

g_mat = good_mat./65;;
b_mat = bad_mat./60;
subplot(2,2,3);imagesc(g_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 8);xtickangle(50);
ylabel('PLV - alpha','FontSize', 15)
subplot(2,2,4);imagesc(b_mat);colormap(jet);colorbar;caxis([0 max([max(g_mat,[],'all'),max(b_mat,[],'all')])]);
set(gca,'XTick',1:15,'XTickLabel',chans,'YTick',1:15,'YTickLabel',chans,'FontSize', 8);xtickangle(50);
