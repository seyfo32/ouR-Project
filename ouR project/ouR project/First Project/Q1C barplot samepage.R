par(mfrow=c(2,1))
our_barplot(table(tablo$Group),names.arg =c("group1","group2","group3","group4"),title = "Group Barplot",xlab = "Groups", ylab = "Values",xlim = c(0,5), ylim = c(0,35),color = "yellow")
our_barplot(table(tablo$Gender),names.arg =c("Female","Male"),title = "Gender Barplot",xlab = "Genders", ylab = "Values",xlim = c(0,3), ylim = c(0,100),color = "yellow")