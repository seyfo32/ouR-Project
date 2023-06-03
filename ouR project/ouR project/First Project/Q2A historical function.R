our_histogram <- function(data, bins = 10, main = "Histogram", xlab = "x", ylab = "Frequency", xlim = NULL, ylim = c(0,25), color = "steelblue") {
  
  
  data<- gsub(",",".",data)
  data<- as.numeric(data)
  data <- na.omit(data)
  breaks <- seq(min(data), max(data), length.out = bins + 1)
  
  
  plot(0, type = "n", xlim = xlim, ylim = ylim, xlab = xlab, ylab = ylab, main = main)
  
  
  counts <- table(cut(data, breaks = breaks, include.lowest = TRUE))
  bar_width <- diff(breaks) * 0.9
  bar_height <- counts 
  
  
  for (i in seq_along(bar_height)) {
    rect(breaks[i], 0, breaks[i + 1], bar_height[i], col = color, border = TRUE)
  }
}