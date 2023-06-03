our_maximum <- function(...){
  numbers<- list(...)
  maxx <-numbers[1]
  for(x in numbers){
    if(x > maxx){
      maxx<-x
    }
  }
  return(maxx)
}
