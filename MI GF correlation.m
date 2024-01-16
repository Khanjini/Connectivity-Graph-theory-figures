clear all;

subs_cho = [1:54];

result = [76;89.6666666666667;90.3333333333333;59.6666666666667;87.3333333333333;61.6666666666667;55.3333333333333;59;73;61;55.6666666666667;59.3333333333333;67.6666666666667;69.3333333333333;62.6666666666667;58.3333333333333;71.6666666666667;92.6666666666667;72.3333333333333;64;98;70;95.0000000000000;64.3333333333333;46.6666666666667;53.3333333333333;54.6666666666667;90;74.6666666666667;59.6666666666667;60.6666666666667;96.6666666666667;95;49.0000000000000;49.3333333333333;95.0000000000000;90.3333333333333;56;77.3333333333333;53.6666666666667;53.6666666666667;61;78.3333333333333;88.0000000000000;90.3333333333333;62;53;68;69;61.6666666666667;52.6666666666667;77.6666666666667;53.3333333333333;55.6666666666667];

for k = 1:size(subs_cho,2);
    num = subs_cho(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\psi\psi_alpha');
    l_name = sprintf('pertest_psi_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\psi\psi_alpha');
    
     mat = psi_mat_alpha;
    
     mat(mat<0) = 0 ;
     
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

corr_result = [CC_r(1,2);CL_r(1,2);LE_r(1,2);GE_r(1,2);str_r(1,2)]';
corr_result_p = [CC_p(1,2);CL_p(1,2);LE_p(1,2);GE_p(1,2);str_p(1,2)]';

y = result;
X = [ones(length(y),1) CC'];

figure;scatter(CC,result);hold on;lsline
title('Correlation: PSI-CC')
ylabel('Actual MI classification accuracy[%]')
xlabel('CC')

%% COH
clear all;

subs_cho = [1:54];

result = [76;89.6666666666667;90.3333333333333;59.6666666666667;87.3333333333333;61.6666666666667;55.3333333333333;59;73;61;55.6666666666667;59.3333333333333;67.6666666666667;69.3333333333333;62.6666666666667;58.3333333333333;71.6666666666667;92.6666666666667;72.3333333333333;64;98;70;95.0000000000000;64.3333333333333;46.6666666666667;53.3333333333333;54.6666666666667;90;74.6666666666667;59.6666666666667;60.6666666666667;96.6666666666667;95;49.0000000000000;49.3333333333333;95.0000000000000;90.3333333333333;56;77.3333333333333;53.6666666666667;53.6666666666667;61;78.3333333333333;88.0000000000000;90.3333333333333;62;53;68;69;61.6666666666667;52.6666666666667;77.6666666666667;53.3333333333333;55.6666666666667];

for k = 1:size(subs_cho,2);
    num = subs_cho(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh\coh_alpha');
    l_name = sprintf('pertest_coh_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\coh\coh_alpha');
    
     mat = coh_mat_alpha;
     
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

corr_result = [CC_r(1,2);CL_r(1,2);LE_r(1,2);GE_r(1,2);str_r(1,2)]';
corr_result_p = [CC_p(1,2);CL_p(1,2);LE_p(1,2);GE_p(1,2);str_p(1,2)]';

y = result;
X = [ones(length(y),1) CC'];

figure;scatter(CC,result);hold on;lsline
title('Correlation: PSI-CC')
ylabel('Actual MI classification accuracy[%]')
xlabel('CC')

%% PLV
clear all;

subs_cho = [1:54];

result = [76;89.6666666666667;90.3333333333333;59.6666666666667;87.3333333333333;61.6666666666667;55.3333333333333;59;73;61;55.6666666666667;59.3333333333333;67.6666666666667;69.3333333333333;62.6666666666667;58.3333333333333;71.6666666666667;92.6666666666667;72.3333333333333;64;98;70;95.0000000000000;64.3333333333333;46.6666666666667;53.3333333333333;54.6666666666667;90;74.6666666666667;59.6666666666667;60.6666666666667;96.6666666666667;95;49.0000000000000;49.3333333333333;95.0000000000000;90.3333333333333;56;77.3333333333333;53.6666666666667;53.6666666666667;61;78.3333333333333;88.0000000000000;90.3333333333333;62;53;68;69;61.6666666666667;52.6666666666667;77.6666666666667;53.3333333333333;55.6666666666667];

for k = 1:size(subs_cho,2);
    num = subs_cho(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    l_name = sprintf('pertest_plv_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\plv\plv_alpha');
    
     mat = plv_mat_alpha;
     
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

corr_result = [CC_r(1,2);CL_r(1,2);LE_r(1,2);GE_r(1,2);str_r(1,2)]';
corr_result_p = [CC_p(1,2);CL_p(1,2);LE_p(1,2);GE_p(1,2);str_p(1,2)]';

y = result;
X = [ones(length(y),1) CC'];

figure;scatter(CC,result);hold on;lsline
title('Correlation: PLV-CC')
ylabel('Actual MI classification accuracy[%]')
xlabel('CC')

%% MVGC
clear all;

subs_cho = [1:54];

result = [76;89.6666666666667;90.3333333333333;59.6666666666667;87.3333333333333;61.6666666666667;55.3333333333333;59;73;61;55.6666666666667;59.3333333333333;67.6666666666667;69.3333333333333;62.6666666666667;58.3333333333333;71.6666666666667;92.6666666666667;72.3333333333333;64;98;70;95.0000000000000;64.3333333333333;46.6666666666667;53.3333333333333;54.6666666666667;90;74.6666666666667;59.6666666666667;60.6666666666667;96.6666666666667;95;49.0000000000000;49.3333333333333;95.0000000000000;90.3333333333333;56;77.3333333333333;53.6666666666667;53.6666666666667;61;78.3333333333333;88.0000000000000;90.3333333333333;62;53;68;69;61.6666666666667;52.6666666666667;77.6666666666667;53.3333333333333;55.6666666666667];

for k = 1:size(subs_cho,2);
    num = subs_cho(k);
    
    addpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\MVGC\MVGC_theta_alpha');
    l_name = sprintf('MVGC_%02d.mat',num);
    load(l_name);
    rmpath('C:\Users\Biocomputing\Desktop\workplace\Ahn_2013\korea_mi\MVGC\MVGC_theta_alpha');
    
     mat = MVGC_theat_alpha;
     
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

corr_result = [CC_r(1,2);CL_r(1,2);LE_r(1,2);GE_r(1,2);str_r(1,2)]';
corr_result_p = [CC_p(1,2);CL_p(1,2);LE_p(1,2);GE_p(1,2);str_p(1,2)]';

y = result;
X = [ones(length(y),1) CC'];

figure;scatter(CC,result);hold on;lsline
title('Correlation: MVGC-CC')
ylabel('Actual MI classification accuracy[%]')
xlabel('CC')
