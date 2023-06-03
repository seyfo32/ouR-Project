our_median<-function(x) {
  sirali_x <- sort(x) 
  n <- length(sirali_x)  
  
  if (n %% 2 == 0) {
    
    median_index <- c(n/2, n/2 + 1)
    median_value <- mean_function(sirali_x[median_index])
  } else {
    
    median_index <- (n + 1) / 2
    median_value <- sirali_x[median_index]
  }
  
  return(median_value)
}
