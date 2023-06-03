our_boxplot <- function(data,names.arg, main = "Boxplot", xlab = "x", ylab = "Values", xlim = NULL, ylim = NULL, color = "steelblue") {
  data<- gsub(",",".",data)
  data<- as.numeric(data)
  data <- na.omit(data)
  
  
  if (is.data.frame(data)) {
    data <- unlist(data)
  }
   
  n <- length(data)
  med <- our_median(data)
  q1 <- quantile(data, 0.25)
  q3 <- quantile(data, 0.75)
  iqr <- q3 - q1
  lw <- our_maximum(q1 - 1.5 * iqr, min(data))
  uw <- our_minimum(q3 + 1.5 * iqr, max(data))
  
  plot(0,xaxt="n",type = "n", xlim = xlim, ylim = ylim, xlab = xlab, ylab = ylab, main = main)
  rect(0.75, lw, 1.25, uw, col = color, border = NA)
  segments(1, q1, 1, q3, lwd = 2)
  segments(0.9, med, 1.1, med, lwd = 2)
  points(rep(1, n), data, pch = 20,cex=1)
  axis(1, at = 1, labels = names.arg)
  axis(2)
}