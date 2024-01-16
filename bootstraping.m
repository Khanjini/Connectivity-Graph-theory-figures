good_CC_alpha_t = [good_CC_alpha_cho,good_CC_alpha_k,good_CC_alpha_k2];
good_CL_alpha_t = [good_CL_alpha_cho,good_CL_alpha_k,good_CL_alpha_k2];
good_GE_alpha_t = [good_GE_alpha_cho,good_GE_alpha_k,good_GE_alpha_k2];
good_LE_alpha_t = [good_LE_alpha_cho,good_LE_alpha_k,good_LE_alpha_k2];
good_str_alpha_t = [good_str_alpha_cho,good_str_alpha_k,good_str_alpha_k2];

bad_CC_alpha_t = [bad_CC_alpha_cho,bad_CC_alpha_k,bad_CC_alpha_k2];
bad_CL_alpha_t = [bad_CL_alpha_cho,bad_CL_alpha_k,bad_CL_alpha_k2];
bad_GE_alpha_t = [bad_GE_alpha_cho,bad_GE_alpha_k,bad_GE_alpha_k2];
bad_LE_alpha_t = [bad_LE_alpha_cho,bad_LE_alpha_k,bad_LE_alpha_k2];
bad_str_alpha_t = [bad_str_alpha_cho,bad_str_alpha_k,bad_str_alpha_k2];

bt = [];
dif_bt = [];

for i = 1:1000;
    r_b = randi([1 51],1,25);
    r_g = randi([1 61],1,25);
    
    bb = bad_CC_alpha_t(r_b);
    bg = good_CC_alpha_t(r_g);
    bt_m = mean([bb,bg],'all');
    
    bt(i) = bt_m;
    
    dif = bg - bb;
    
    dif_m = mean(dif,'all');
    
    dif_bt(i) = dif_m;
    
    clear dif bt_m
end;

figure;subplot(1,2,1);histogram(bt);xl=xline(mean(good_CC_alpha_t,'all'),'-',{'Good'});xl.LineWidth = 2;
pl=xline(prctile(bt,2.5),'-r',{'P-Value 2.5'});pl.LineWidth = 1.5;
xl2=xline(mean(bad_CC_alpha_t,'all'),'-',{'Bad'});xl2.LineWidth = 2;title('Bootstrapping between groups')
pl=xline(prctile(bt,97.5),'-r',{'P-Value 97.5'});pl.LineWidth = 1.5;
subplot(1,2,2);histogram(dif_bt);xl=xline(mean(good_CC_alpha_t,'all') - mean(bad_CC_alpha_t,'all'),'-',{'Difference'});xl.LineWidth = 2;
title('Bootstrapping for the difference of means');
pvalues = [prctile(bt,2.5),mean(bad_CC_alpha_t,'all'),prctile(bt,97.5),mean(good_CC_alpha_t,'all')]

bt = [];
dif_bt = [];

for i = 1:1000;
    r_b = randi([1 51],1,25);
    r_g = randi([1 61],1,25);
    
    bb = bad_CL_alpha_t(r_b);
    bg = good_CL_alpha_t(r_g);
    bt_m = mean([bb,bg],'all');
    
    bt(i) = bt_m;
    
    dif = bg - bb;
    
    dif_m = mean(dif,'all');
    
    dif_bt(i) = dif_m;
    
    clear dif bt_m
end;

figure;subplot(1,2,1);histogram(bt);xl=xline(mean(good_CL_alpha_t,'all'),'-',{'Good'});xl.LineWidth = 2;
pl=xline(prctile(bt,2.5),'-r',{'P-Value 2.5'});pl.LineWidth = 1.5;
xl2=xline(mean(bad_CL_alpha_t,'all'),'-',{'Bad'});xl2.LineWidth = 2;
pl=xline(prctile(bt,97.5),'-r',{'P-Value 97.5'});pl.LineWidth = 1.5;
title('Bootstrapping between groups')
subplot(1,2,2);histogram(dif_bt);xl=xline(mean(good_CL_alpha_t,'all') - mean(bad_CL_alpha_t,'all'),'-',{'Difference'});xl.LineWidth = 2;
title('Bootstrapping for the difference of means');
pvalues = [prctile(bt,2.5),mean(bad_CL_alpha_t,'all'),prctile(bt,97.5),mean(good_CL_alpha_t,'all')]

bt = [];
dif_bt = [];

for i = 1:1000;
    r_b = randi([1 51],1,25);
    r_g = randi([1 61],1,25);
    
    bb = bad_GE_alpha_t(r_b);
    bg = good_GE_alpha_t(r_g);
    bt_m = mean([bb,bg],'all');
    
    bt(i) = bt_m;
    
    dif = bg - bb;
    
    dif_m = mean(dif,'all');
    
    dif_bt(i) = dif_m;
    
    clear dif bt_m
end;

figure;subplot(1,2,1);histogram(bt);xl=xline(mean(good_GE_alpha_t,'all'),'-',{'Good'});xl.LineWidth = 2;
pl=xline(prctile(bt,2.5),'-r',{'P-Value 2.5'});pl.LineWidth = 1.5;
xl2=xline(mean(bad_GE_alpha_t,'all'),'-',{'Bad'});xl2.LineWidth = 2;title('Bootstrapping between groups')
pl=xline(prctile(bt,97.5),'-r',{'P-Value 97.5'});pl.LineWidth = 1.5;
title('Bootstrapping between groups')
subplot(1,2,2);histogram(dif_bt);xl=xline(mean(good_GE_alpha_t,'all') - mean(bad_GE_alpha_t,'all'),'-',{'Difference'});xl.LineWidth = 2;
title('Bootstrapping for the difference of means');
pvalues = [prctile(bt,2.5),mean(bad_GE_alpha_t,'all'),prctile(bt,97.5),mean(good_GE_alpha_t,'all')]

bt = [];
dif_bt = [];

for i = 1:1000;
    r_b = randi([1 51],1,25);
    r_g = randi([1 61],1,25);
    
    bb = bad_LE_alpha_t(r_b);
    bg = good_LE_alpha_t(r_g);
    bt_m = mean([bb,bg],'all');
    
    bt(i) = bt_m;
    
    dif = bg - bb;
    
    dif_m = mean(dif,'all');
    
    dif_bt(i) = dif_m;
    
    clear dif bt_m
end;

figure;subplot(1,2,1);histogram(bt);xl=xline(mean(good_LE_alpha_t,'all'),'-',{'Good'});xl.LineWidth = 2;
pl=xline(prctile(bt,2.5),'-r',{'P-Value 2.5'});pl.LineWidth = 1.5;
xl2=xline(mean(bad_LE_alpha_t,'all'),'-',{'Bad'});xl2.LineWidth = 2;title('Bootstrapping between groups')
pl=xline(prctile(bt,97.5),'-r',{'P-Value 97.5'});pl.LineWidth = 1.5;
subplot(1,2,2);histogram(dif_bt);xl=xline(mean(good_LE_alpha_t,'all') - mean(bad_LE_alpha_t,'all'),'-',{'Difference'});xl.LineWidth = 2;
title('Bootstrapping for the difference of means');
pvalues = [prctile(bt,2.5),mean(bad_LE_alpha_t,'all'),prctile(bt,97.5),mean(good_LE_alpha_t,'all')]

bt = [];
dif_bt = [];

for i = 1:1000;
    r_b = randi([1 51],1,25);
    r_g = randi([1 61],1,25);
    
    bb = bad_str_alpha_t(r_b);
    bg = good_str_alpha_t(r_g);
    bt_m = mean([bb,bg],'all');
    
    bt(i) = bt_m;
    
    dif = bg - bb;
    
    dif_m = mean(dif,'all');
    
    dif_bt(i) = dif_m;
    
    clear dif bt_m
end;

figure;subplot(1,2,1);histogram(bt);xl=xline(mean(good_str_alpha_t,'all'),'-',{'Good'});xl.LineWidth = 2;
pl=xline(prctile(bt,2.5),'-r',{'P-Value 2.5'});pl.LineWidth = 1.5;
xl2=xline(mean(bad_str_alpha_t,'all'),'-',{'Bad'});xl2.LineWidth = 2;title('Bootstrapping between groups')
pl=xline(prctile(bt,97.5),'-r',{'P-Value 97.5'});pl.LineWidth = 1.5;
subplot(1,2,2);histogram(dif_bt);xl=xline(mean(good_str_alpha_t,'all') - mean(bad_str_alpha_t,'all'),'-',{'Difference'});xl.LineWidth = 2;
title('Bootstrapping for the difference of means');
pvalues = [prctile(bt,2.5),mean(bad_str_alpha_t,'all'),prctile(bt,97.5),mean(good_str_alpha_t,'all')]
