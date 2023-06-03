our_barplot<- function(heights, names.arg, title = "", xlab = "", ylab = "", xlim = NULL, ylim = NULL, color = "blue") {
  n <- length(heights)
  bar_width <- 1.5 / n
  
  
  plot(NULL , xaxt="n", xlim = xlim, ylim = ylim, main = title, xlab = xlab, ylab = ylab, type = "n")
  
  
  for (i in 1:n) {
    rect(i - bar_width/2, 0, i + bar_width/2, heights[i], col = color)
  }
  
  
  axis(1, at = 1:n, labels = names.arg)
  
  
  axis(2)
}