our_minimum <-function(...){
  numbers <- list(...)
  minn<- numbers[1]
  for(x in numbers){
    if(x < minn){
      minn <- x
    }
  }
  return(minn)
}
