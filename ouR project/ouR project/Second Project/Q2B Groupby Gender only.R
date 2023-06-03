our_sec_groupby_gender  = tablo %>% group_by( Gender) %>%
  summarise(
    var1_var2_covariance = our_covariance(Var1,Var2),
    var1_var2_correlation = our_correlation(Var1,Var2)
    
  ) 

View(our_sec_groupby_gender)
#Farklı variable kolonlarını hesaplatabilmek için var değişken sayısını değiştirebiliriz(örn. Var1,Var2,Var3).