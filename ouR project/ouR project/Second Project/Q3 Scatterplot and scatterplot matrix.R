our_scatterplot <- function(tablo, var1, var2) {
 
  plot(tablo[[var1]], tablo[[var2]], xlab = var1, ylab = var2, ,xlim=c(3,5) ,ylim=c(15,25),main = paste("Scatterplot of", var1, "vs", var2))
  plot(tablo[[var1]], tablo[[var2]], xlab = var1, ylab = var2, ,xlim=c(15,25) ,ylim=c(3,5),main = paste("Scatterplot of", var1, "vs", var2))
}

our_scatterplot_matrix <- function(tablo) {
  
  n <- ncol(tablo)
  vars <- names(tablo)
  
  par(mfrow = c(n, n))
  
  for (i in 1:n) {
    for (j in 1:n) {
      if (i != j) {
        scatterplot(tablo, vars[i], vars[j])
      }
    }
  }
}



var1raw<- tablo$Var1
var2raw<- tablo$Var2
var1raw<- gsub(",",".",var1raw)
var1raw<- as.numeric(var1raw)
var1raw <- na.omit(var1raw)
var2raw<- gsub(",",".",var2raw)
var2raw<- as.numeric(var2raw)
var2raw <- na.omit(var2raw)
df <- data.frame(
  Var1 = var1raw,
  Var2 = var2raw
  
)
#fonksiyonlarımı çalıştırma komutları 

our_scatterplot(df, "var1", "var2")


our_scatterplot_matrix(df)