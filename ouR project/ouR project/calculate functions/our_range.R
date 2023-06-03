our_range <- function(numbers) {     min_num <- numbers[1]  
max_num <- numbers[1]  

for (num in numbers) {
  if (num < min_num) {
    min_num <- num
  }
  if (num > max_num) {
    max_num <- num
  }
}

result <- c(min_num, max_num)
return(result)
}