our_groupby_together  = tablo %>% group_by( Gender,Group) %>%
     reframe(var2_observation = our_observ(Var2),
     var2_summarys = our_summary(Var2),
     var2_minimum = our_minimum(Var2),
     var2_maximum = our_maximum(Var2),
     var2_range= our_range(Var2),
     var2_mean = our_mean(Var2),
     var2_median = our_median(Var2),
     var2_sum_of_squares = our_square_summary(Var2),
     var2_variance = our_variance(Var2),
     var2_standard_dev = our_standardD(Var2),
             ) 

View(our_groupby_together)
#Farklı variable kolonlarını hesaplatabilmek için var değişken sayısını değiştirebiliriz(örn. Var1,Var2,Var3).