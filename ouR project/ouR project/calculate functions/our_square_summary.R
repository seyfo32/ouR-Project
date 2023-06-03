our_square_summary <- function(...){
  numbers<-list(...)
  summ<-0
  for(x in numbers){
    summ<- summ+(x*x)
  }
  return(summ)
}