%% theta

clear all

cho_bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];
cho_good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];
for k = 1:size(cho_good,2);
    num = cho_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta');
    
     mat = MVGC_theta;
    
    good_CC_theta_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    good_CL_theta_cho(1,k) = charpath(1./D);
    good_GE_theta_cho(1,k) = efficiency_wei(mat);
    good_LE_theta_cho(1,k) = mean(efficiency_wei(mat,2));
    good_str_theta_cho(1,k) = mean(strengths_und(mat));
    
end;

for k = 1:size(cho_bad,2);
    num = cho_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta');
    
     mat = MVGC_theta;
    
    bad_CC_theta_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    bad_CL_theta_cho(1,k) = charpath(1./D);
    bad_GE_theta_cho(1,k) = efficiency_wei(mat);
    bad_LE_theta_cho(1,k) = mean(efficiency_wei(mat,2));
    bad_str_theta_cho(1,k) = mean(strengths_und(mat));
 
end;

gf_mean_std_good_theta_cho = [mean(good_CC_theta_cho),std(good_CC_theta_cho),mean(good_CL_theta_cho),std(good_CL_theta_cho), mean(good_GE_theta_cho),std(good_GE_theta_cho),mean(good_LE_theta_cho),std(good_LE_theta_cho),mean(good_str_theta_cho),std(good_str_theta_cho)]
gf_mean_std_bad_theta_cho = [mean(bad_CC_theta_cho),std(bad_CC_theta_cho),mean(bad_CL_theta_cho),std(bad_CL_theta_cho),mean(bad_GE_theta_cho),std(bad_GE_theta_cho),mean(bad_LE_theta_cho),std(bad_LE_theta_cho),mean(bad_str_theta_cho),std(bad_str_theta_cho)]

gf_result_theta_cho = [ranksum(good_CC_theta_cho,bad_CC_theta_cho),ranksum(good_CL_theta_cho,bad_CL_theta_cho),ranksum(good_GE_theta_cho,bad_GE_theta_cho),ranksum(good_LE_theta_cho,bad_LE_theta_cho),ranksum(good_str_theta_cho,bad_str_theta_cho)]
[h,p1] = ttest2(good_CC_theta_cho,bad_CC_theta_cho);
[h,p2] = ttest2(good_CL_theta_cho,bad_CL_theta_cho);
[h,p3] = ttest2(good_GE_theta_cho,bad_GE_theta_cho);
[h,p4] = ttest2(good_LE_theta_cho,bad_LE_theta_cho);
[h,p5] = ttest2(good_str_theta_cho,bad_str_theta_cho);
gf_tresult_theta_cho = [p1,p2,p3,p4,p5]

clear all
%% alpha
cho_bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];
cho_good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];

for k = 1:size(cho_good,2);
    num = cho_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_alpha');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_alpha');
    
     mat = MVGC_alpha;
    
    good_CC_alpha_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    good_CL_alpha_cho(1,k) = charpath(1./D);
    good_GE_alpha_cho(1,k) = efficiency_wei(mat);
    good_LE_alpha_cho(1,k) = mean(efficiency_wei(mat,2));
    good_str_alpha_cho(1,k) = mean(strengths_und(mat));
    
end;

for k = 1:size(cho_bad,2);
    num = cho_bad(k);

    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_alpha');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_alpha');
    
     mat = MVGC_alpha;
    
    bad_CC_alpha_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    bad_CL_alpha_cho(1,k) = charpath(1./D);
    bad_GE_alpha_cho(1,k) = efficiency_wei(mat);
    bad_LE_alpha_cho(1,k) = mean(efficiency_wei(mat,2));
    bad_str_alpha_cho(1,k) = mean(strengths_und(mat));
 
end;

gf_mean_std_good_alpha_cho = [mean(good_CC_alpha_cho),std(good_CC_alpha_cho),mean(good_CL_alpha_cho),std(good_CL_alpha_cho),mean(good_GE_alpha_cho),std(good_GE_alpha_cho),mean(good_LE_alpha_cho),std(good_LE_alpha_cho),mean(good_str_alpha_cho),std(good_str_alpha_cho)]
gf_mean_std_bad_alpha_cho = [mean(bad_CC_alpha_cho),std(bad_CC_alpha_cho),mean(bad_CL_alpha_cho),std(bad_CL_alpha_cho),mean(bad_GE_alpha_cho),std(bad_GE_alpha_cho),mean(bad_LE_alpha_cho),std(bad_LE_alpha_cho),mean(bad_str_alpha_cho),std(bad_str_alpha_cho)]

gf_result_cho = [ranksum(good_CC_alpha_cho,bad_CC_alpha_cho),ranksum(good_CL_alpha_cho,bad_CL_alpha_cho),ranksum(good_GE_alpha_cho,bad_GE_alpha_cho),ranksum(good_LE_alpha_cho,bad_LE_alpha_cho),ranksum(good_str_alpha_cho,bad_str_alpha_cho)]
[h,p1] = ttest2(good_CC_alpha_cho,bad_CC_alpha_cho);
[h,p2] = ttest2(good_CL_alpha_cho,bad_CL_alpha_cho);
[h,p3] = ttest2(good_GE_alpha_cho,bad_GE_alpha_cho);
[h,p4] = ttest2(good_LE_alpha_cho,bad_LE_alpha_cho);
[h,p5] = ttest2(good_str_alpha_cho,bad_str_alpha_cho);
gf_tresult_cho = [p1,p2,p3,p4,p5]

clear all
%% theta_alpha
cho_bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];
cho_good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];

for k = 1:size(cho_good,2);
    num = cho_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta_alpha');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta_alpha');
    
     mat = MVGC_theta_alpha;
    
    good_CC_theta_alpha_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    good_CL_theta_alpha_cho(1,k) = charpath(1./D);
%     good_CL_theta_alpha_cho(1,k) = charpath(D);
    good_GE_theta_alpha_cho(1,k) = efficiency_wei(mat);
    good_LE_theta_alpha_cho(1,k) = mean(efficiency_wei(mat,2));
    good_str_theta_alpha_cho(1,k) = mean(strengths_und(mat));
    
end;

for k = 1:size(cho_bad,2);
    num = cho_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta_alpha');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta_alpha');
    
     mat = MVGC_theta_alpha;
    
    bad_CC_theta_alpha_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    bad_CL_theta_alpha_cho(1,k) = charpath(1./D);
%     bad_CL_theta_alpha_cho(1,k) = charpath(D);
    bad_GE_theta_alpha_cho(1,k) = efficiency_wei(mat);
    bad_LE_theta_alpha_cho(1,k) = mean(efficiency_wei(mat,2));
    bad_str_theta_alpha_cho(1,k) = mean(strengths_und(mat));
 
end;

gf_mean_std_good_theta_alpha_cho = [mean(good_CC_theta_alpha_cho),std(good_CC_theta_alpha_cho),mean(good_CL_theta_alpha_cho),std(good_CL_theta_alpha_cho),mean(good_GE_theta_alpha_cho),std(good_GE_theta_alpha_cho),mean(good_LE_theta_alpha_cho),std(good_LE_theta_alpha_cho),mean(good_str_theta_alpha_cho),std(good_str_theta_alpha_cho)]
gf_mean_std_bad_theta_alpha_cho = [mean(bad_CC_theta_alpha_cho),std(bad_CC_theta_alpha_cho),mean(bad_CL_theta_alpha_cho),std(bad_CL_theta_alpha_cho),mean(bad_GE_theta_alpha_cho),std(bad_GE_theta_alpha_cho),mean(bad_LE_theta_alpha_cho),std(bad_LE_theta_alpha_cho),mean(bad_str_theta_alpha_cho),std(bad_str_theta_alpha_cho)]

gf_result_theta_alpha_cho = [ranksum(good_CC_theta_alpha_cho,bad_CC_theta_alpha_cho),ranksum(good_CL_theta_alpha_cho,bad_CL_theta_alpha_cho),ranksum(good_GE_theta_alpha_cho,bad_GE_theta_alpha_cho),ranksum(good_LE_theta_alpha_cho,bad_LE_theta_alpha_cho),ranksum(good_str_theta_alpha_cho,bad_str_theta_alpha_cho)]
[h,p1] = ttest2(good_CC_theta_alpha_cho,bad_CC_theta_alpha_cho);
[h,p2] = ttest2(good_CL_theta_alpha_cho,bad_CL_theta_alpha_cho);
[h,p3] = ttest2(good_GE_theta_alpha_cho,bad_GE_theta_alpha_cho);
[h,p4] = ttest2(good_LE_theta_alpha_cho,bad_LE_theta_alpha_cho);
[h,p5] = ttest2(good_str_theta_alpha_cho,bad_str_theta_alpha_cho);
gf_tresult_theta_alpha_cho = [p1,p2,p3,p4,p5]

clear all

%% Beta
cho_bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];
cho_good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];

for k = 1:size(cho_good,2);
    num = cho_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_beta');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_beta');
    
     mat = MVGC_beta;
    
    good_CC_beta_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    good_CL_beta_cho(1,k) = charpath(1./D);
    good_GE_beta_cho(1,k) = efficiency_wei(mat);
    good_LE_beta_cho(1,k) = mean(efficiency_wei(mat,2));
    good_str_beta_cho(1,k) = mean(strengths_und(mat));
    
end;

for k = 1:size(cho_bad,2);
    num = cho_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_beta');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_beta');
    
     mat = MVGC_beta;
    
    bad_CC_beta_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    bad_CL_beta_cho(1,k) = charpath(1./D);
    bad_GE_beta_cho(1,k) = efficiency_wei(mat);
    bad_LE_beta_cho(1,k) = mean(efficiency_wei(mat,2));
    bad_str_beta_cho(1,k) = mean(strengths_und(mat));
 
end;

gf_mean_std_good_beta_cho = [mean(good_CC_beta_cho),std(good_CC_beta_cho),mean(good_CL_beta_cho),std(good_CL_beta_cho),mean(good_GE_beta_cho),std(good_GE_beta_cho),mean(good_LE_beta_cho),std(good_LE_beta_cho),mean(good_str_beta_cho),std(good_str_beta_cho)]
gf_mean_std_bad_beta_cho = [mean(bad_CC_beta_cho),std(bad_CC_beta_cho),mean(bad_CL_beta_cho),std(bad_CL_beta_cho),mean(bad_GE_beta_cho),std(bad_GE_beta_cho),mean(bad_LE_beta_cho),std(bad_LE_beta_cho),mean(bad_str_beta_cho),std(bad_str_beta_cho)]

gf_result_cho = [ranksum(good_CC_beta_cho,bad_CC_beta_cho),ranksum(good_CL_beta_cho,bad_CL_beta_cho),ranksum(good_GE_beta_cho,bad_GE_beta_cho),ranksum(good_LE_beta_cho,bad_LE_beta_cho),ranksum(good_str_beta_cho,bad_str_beta_cho)]
[h,p1] = ttest2(good_CC_beta_cho,bad_CC_beta_cho);
[h,p2] = ttest2(good_CL_beta_cho,bad_CL_beta_cho);
[h,p3] = ttest2(good_GE_beta_cho,bad_GE_beta_cho);
[h,p4] = ttest2(good_LE_beta_cho,bad_LE_beta_cho);
[h,p5] = ttest2(good_str_beta_cho,bad_str_beta_cho);
gf_tresult_cho = [p1,p2,p3,p4,p5]

clear all

%% Beta
cho_bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];
cho_good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];

for k = 1:size(cho_good,2);
    num = cho_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_gamma');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_gamma');
    
     mat = MVGC_gamma;
    
    good_CC_beta_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    good_CL_beta_cho(1,k) = charpath(1./D);
    good_GE_beta_cho(1,k) = efficiency_wei(mat);
    good_LE_beta_cho(1,k) = mean(efficiency_wei(mat,2));
    good_str_beta_cho(1,k) = mean(strengths_und(mat));
    
end;

for k = 1:size(cho_bad,2);
    num = cho_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_gamma');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_gamma');
    
     mat = MVGC_gamma;
    
    bad_CC_beta_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    bad_CL_beta_cho(1,k) = charpath(1./D);
    bad_GE_beta_cho(1,k) = efficiency_wei(mat);
    bad_LE_beta_cho(1,k) = mean(efficiency_wei(mat,2));
    bad_str_beta_cho(1,k) = mean(strengths_und(mat));
 
end;

gf_mean_std_good_beta_cho = [mean(good_CC_beta_cho),std(good_CC_beta_cho),mean(good_CL_beta_cho),std(good_CL_beta_cho),mean(good_GE_beta_cho),std(good_GE_beta_cho),mean(good_LE_beta_cho),std(good_LE_beta_cho),mean(good_str_beta_cho),std(good_str_beta_cho)]
gf_mean_std_bad_beta_cho = [mean(bad_CC_beta_cho),std(bad_CC_beta_cho),mean(bad_CL_beta_cho),std(bad_CL_beta_cho),mean(bad_GE_beta_cho),std(bad_GE_beta_cho),mean(bad_LE_beta_cho),std(bad_LE_beta_cho),mean(bad_str_beta_cho),std(bad_str_beta_cho)]

gf_result_cho = [ranksum(good_CC_beta_cho,bad_CC_beta_cho),ranksum(good_CL_beta_cho,bad_CL_beta_cho),ranksum(good_GE_beta_cho,bad_GE_beta_cho),ranksum(good_LE_beta_cho,bad_LE_beta_cho),ranksum(good_str_beta_cho,bad_str_beta_cho)]
[h,p1] = ttest2(good_CC_beta_cho,bad_CC_beta_cho);
[h,p2] = ttest2(good_CL_beta_cho,bad_CL_beta_cho);
[h,p3] = ttest2(good_GE_beta_cho,bad_GE_beta_cho);
[h,p4] = ttest2(good_LE_beta_cho,bad_LE_beta_cho);
[h,p5] = ttest2(good_str_beta_cho,bad_str_beta_cho);
gf_tresult_cho = [p1,p2,p3,p4,p5]

clear all
%% regression - beta

clear all;

subs_cho = [1:52];

result = [71.4444444444445;56.6805555555556;83.0694444444444;78.9583333333333;76.9027777777778;76.0000000000000;53.1597222222223;57.6388888888889;63.1365740740741;74.2361111111111;61.1250000000000;63.0416666666667;62.9583333333333;96.1111111111111;70.9861111111111;52.1388888888889;47.9027777777778;59.7083333333333;60.8333333333334;69.3333333333333;75.1944444444444;57.6944444444445;78.8888888888889;60.3472222222222;64.5000000000000;71.4444444444444;58.0694444444444;63.2222222222222;55.4027777777778;61.1666666666667;66.4166666666667;56.7638888888889;55.8055555555556;60.1805555555556;79.1805555555556;66.4722222222222;75.3333333333333;54.5694444444445;62.4305555555556;52.5833333333333;81.9722222222222;59.1944444444444;95.6527777777778;73.6388888888889;54.1111111111111;79.6527777777778;63.6250000000000;78.7222222222222;72.5416666666667;84.5972222222222;57.2916666666666;68.3333333333333];

for k = 1:size(subs_cho,2);
    num = subs_cho(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_beta');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_beta');
    
     mat = MVGC_beta;
     
    CC(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    CL(1,k) = charpath(1./D);
    GE(1,k) = efficiency_wei(mat);
    LE(1,k) = mean(efficiency_wei(mat,2));
    str(1,k) = mean(strengths_und(mat));

end;

[CC_r,CC_p] = corrcoef(CC,result);
[CL_r,CL_p] = corrcoef(CL,result);
[LE_r,LE_p] = corrcoef(LE,result);
[GE_r,GE_p] = corrcoef(GE,result);
[str_r,str_p] = corrcoef(str,result);

corr_result = [CC_r(1,2);CC_p(1,2);CL_r(1,2);CL_p(1,2);LE_r(1,2);LE_p(1,2);GE_r(1,2);GE_p(1,2);str_r(1,2);str_p(1,2)]';

y = result;
X = [ones(length(y),1) str'];
X = [ones(length(y),1) LE'];
b = X\y
[~,~,~,~,stats] = regress(y,X)

y_hat = X*b;
sqrt( 1/length(y)* sum( (y-y_hat).^2  ))
[r, p] = corrcoef(y_hat,y)

figure;scatter(y_hat,y);xlim([40 100]);hold on;lsline
title('Regression: MVGC-Strength')
ylabel('Actual MI classification accuracy[%]')
xlabel('predicted MI classification accuracy[%]')

figure;scatter(normalize(str,'scale'),result);hold on;lsline

figure;scatter(LE,result);hold on;lsline
title('Correlation: MVGC-Strength')
ylabel('Actual MI classification accuracy[%]')
xlabel('Strength')
%% regression - Theta + Alpha

clear all;

subs_cho = [1:52];

result = [71.4444444444445;56.6805555555556;83.0694444444444;78.9583333333333;76.9027777777778;76.0000000000000;53.1597222222223;57.6388888888889;63.1365740740741;74.2361111111111;61.1250000000000;63.0416666666667;62.9583333333333;96.1111111111111;70.9861111111111;52.1388888888889;47.9027777777778;59.7083333333333;60.8333333333334;69.3333333333333;75.1944444444444;57.6944444444445;78.8888888888889;60.3472222222222;64.5000000000000;71.4444444444444;58.0694444444444;63.2222222222222;55.4027777777778;61.1666666666667;66.4166666666667;56.7638888888889;55.8055555555556;60.1805555555556;79.1805555555556;66.4722222222222;75.3333333333333;54.5694444444445;62.4305555555556;52.5833333333333;81.9722222222222;59.1944444444444;95.6527777777778;73.6388888888889;54.1111111111111;79.6527777777778;63.6250000000000;78.7222222222222;72.5416666666667;84.5972222222222;57.2916666666666;68.3333333333333];

for k = 1:size(subs_cho,2);
    num = subs_cho(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta_alpha');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta_alpha');
    
     mat = MVGC_theta_alpha;
     
    CC(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    CL(1,k) = charpath(1./D);
    GE(1,k) = efficiency_wei(mat);
    LE(1,k) = mean(efficiency_wei(mat,2));
    str(1,k) = mean(strengths_und(mat));

end;

[CC_r,CC_p] = corrcoef(CC,result);
[CL_r,CL_p] = corrcoef(CL,result);
[LE_r,LE_p] = corrcoef(LE,result);
[GE_r,GE_p] = corrcoef(GE,result);
[str_r,str_p] = corrcoef(str,result);

corr_result = [CC_r(1,2);CC_p(1,2);CL_r(1,2);CL_p(1,2);LE_r(1,2);LE_p(1,2);GE_r(1,2);GE_p(1,2);str_r(1,2);str_p(1,2)]';

y = result;
X = [ones(length(y),1) GE'];

figure;
scatter(X(:,2),y);
h = lsline;
h.Color ='b'
h.LineWidth = 2;
% hold on
% scatter(X((tf_robustcov~=0),2),y(tf_robustcov~=0),'red');
xlabel('GE','Fontsize',14 )
ylabel("MI classificiation accuracy[%]",'Fontsize',14 )
legend({"Normal Points","Least-squares line","Outliers"})
title('Correlation: MVGC & GE')

b = X\y
[~,~,~,~,stats] = regress(y,X)

y_hat = X*b;
sqrt( 1/length(y)* sum( (y-y_hat).^2  ))
[r, p] = corrcoef(y_hat,y)

figure;scatter(y_hat,y);xlim([40 100]);hold on;lsline
title('Regression: MVGC-Strength')
title('Regression: MVGC-LE')
ylabel('Actual MI classification accuracy[%]')
xlabel('predicted MI classification accuracy[%]')

figure;scatter(normalize(str,'scale'),result);hold on;lsline

figure;scatter(normalize(GE,'scale'),result);hold on;lsline
title('Correlation: MVGC-GE')
ylabel('Actual MI classification accuracy[%]')
xlabel('GE')
%%
y = result;
X = [ones(length(y),1) str'];
data = cat(2,X(:,2),y);
    
contaminationFraction = 0.05;
[sigma,mu,s_robustcov,tf_robustcov_default] = robustcov(data,'OutlierFraction',0.05);
s_robustcov_threshold = sqrt(chi2inv(1-contaminationFraction,size(data,2)));
tf_robustcov = s_robustcov > s_robustcov_threshold;

X_out([1:size(X((tf_robustcov~=1),2),1)],2) = X((tf_robustcov~=1),2);

[R,P] = corrcoef(y(tf_robustcov~=1),X((tf_robustcov~=1),2),'Alpha',0.05);

figure;
scatter(X((tf_robustcov~=1),2),y(tf_robustcov~=1));
h = lsline;
h.Color ='b'
h.LineWidth = 2;
hold on
scatter(X((tf_robustcov~=0),2),y(tf_robustcov~=0),'red');
xlabel('GE')
ylabel("MI classificiation accuracy")
legend({"Normal Points"," ","Outliers"})


%%
cho_bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];
cho_good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];

g_mat = zeros(15,15);

for k = 1:size(cho_good,2);
    num = cho_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_alpha');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_alpha');
    
     g_mat = g_mat + MVGC_alpha;
     
end;

b_mat = zeros(15,15);

for k = 1:size(cho_bad,2);
    num = cho_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_alpha');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_alpha');
    
     b_mat = b_mat + MVGC_alpha;
     
end;

m_g = g_mat./size(cho_good,2);
m_b = b_mat./size(cho_bad,2);

chans = {'F3','FC3','C5','C3','CP3','P3','O1','Cz','F4','FC4','C4','C6','CP4','P4','O2'};
figure;
subplot(1,2,1);imagesc(m_g);colormap(jet);colorbar;set(gca,'XTick',1:15,'XTickLabel',[],'YTick',1:15,'YTickLabel',chans);title('BCI-literacy','Fontsize',18);caxis([0 1]);caxis([0 max([max(m_g,[],'all'),max(m_b,[],'all')])]);
subplot(1,2,2);imagesc(m_b);colormap(jet);colorbar;set(gca,'XTick',1:15,'XTickLabel',[],'YTick',1:15,'YTickLabel',chans);title('BCI-illiteracy','Fontsize',18);caxis([0 1]);caxis([0 max([max(m_g,[],'all'),max(m_b,[],'all')])]);

%% theta_alpha_beta
cho_bad = [2,7,8,16,17,18,22,27,29,32,33,38,40,42,45,51];
cho_good = [1,3,4,5,6,10,14,15,21,23,26,35,37,41,43,44,46,48,49,50];

for k = 1:size(cho_good,2);
    num = cho_good(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta_alpha_beta');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta_alpha_beta');
    
     mat = MVGC_tab;
    
    good_CC_tab_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    good_CL_tab_cho(1,k) = charpath(1./D);
%     good_CL_theta_alpha_cho(1,k) = charpath(D);
    good_GE_tab_cho(1,k) = efficiency_wei(mat);
    good_LE_tab_cho(1,k) = mean(efficiency_wei(mat,2));
    good_str_tab_cho(1,k) = mean(strengths_und(mat));
    
end;

for k = 1:size(cho_bad,2);
    num = cho_bad(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta_alpha_beta');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\MVGC\MVGC_theta_alpha_beta');
    
     mat = MVGC_tab;
    
    bad_CC_theta_alpha_cho(1,k) = mean(clustering_coef_wd(mat));
    D = distance_wei(mat);
    bad_CL_theta_alpha_cho(1,k) = charpath(1./D);
%     bad_CL_theta_alpha_cho(1,k) = charpath(D);
    bad_GE_theta_alpha_cho(1,k) = efficiency_wei(mat);
    bad_LE_theta_alpha_cho(1,k) = mean(efficiency_wei(mat,2));
    bad_str_theta_alpha_cho(1,k) = mean(strengths_und(mat));
 
end;

gf_mean_std_good_theta_alpha_cho = [mean(good_CC_tab_cho),std(good_CC_tab_cho),mean(good_CL_tab_cho),std(good_CL_tab_cho),mean(good_GE_tab_cho),std(good_GE_tab_cho),mean(good_LE_tab_cho),std(good_LE_tab_cho),mean(good_str_tab_cho),std(good_str_tab_cho)]
gf_mean_std_bad_theta_alpha_cho = [mean(bad_CC_theta_alpha_cho),std(bad_CC_theta_alpha_cho),mean(bad_CL_theta_alpha_cho),std(bad_CL_theta_alpha_cho),mean(bad_GE_theta_alpha_cho),std(bad_GE_theta_alpha_cho),mean(bad_LE_theta_alpha_cho),std(bad_LE_theta_alpha_cho),mean(bad_str_theta_alpha_cho),std(bad_str_theta_alpha_cho)]

gf_result_theta_alpha_cho = [ranksum(good_CC_tab_cho,bad_CC_theta_alpha_cho),ranksum(good_CL_tab_cho,bad_CL_theta_alpha_cho),ranksum(good_GE_tab_cho,bad_GE_theta_alpha_cho),ranksum(good_LE_tab_cho,bad_LE_theta_alpha_cho),ranksum(good_str_tab_cho,bad_str_theta_alpha_cho)]
[h,p1] = ttest2(good_CC_tab_cho,bad_CC_theta_alpha_cho);
[h,p2] = ttest2(good_CL_tab_cho,bad_CL_theta_alpha_cho);
[h,p3] = ttest2(good_GE_tab_cho,bad_GE_theta_alpha_cho);
[h,p4] = ttest2(good_LE_tab_cho,bad_LE_theta_alpha_cho);
[h,p5] = ttest2(good_str_tab_cho,bad_str_theta_alpha_cho);
gf_tresult_theta_alpha_cho = [p1,p2,p3,p4,p5]
