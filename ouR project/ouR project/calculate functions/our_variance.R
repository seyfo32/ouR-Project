our_variance <- function(x){
  
  n<- length(x)
  
  our_mean <-mean_function(x)        
  
  kare_toplami<- sum((x - our_mean)^2) 
  result <- kare_toplami / n
  return(result)
}