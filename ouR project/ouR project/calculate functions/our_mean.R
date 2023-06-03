our_mean <- function(x) {
  sum <- 0
  count <- length(x)
  
  for (num in x) {
    sum <- sum + num
  }
  
  result <- sum / count
  return(result)
  
}
