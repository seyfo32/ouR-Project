our_scale_variables <- function(tablo, vars) {
  scaled_tablo <- tablo
  
  for (var in vars) {
    if (is.numeric(tablo[[var]])) {
      scaled_tablo[[var]] <- scale(tablo[[var]])
    } else {
      warning(paste("Variable", var, "is not numeric. Skipping scaling."))
    }
  }
  
  return(scaled_tablo)
}
var1raw<- tablo$Var1
var2raw<- tablo$Var2
var1raw<- gsub(",",".",var1raw)
var1raw<- as.numeric(var1raw)
var1raw <- na.omit(var1raw)
var2raw<- gsub(",",".",var2raw)
var2raw<- as.numeric(var2raw)
var2raw <- na.omit(var2raw)
df <- data.frame(
  Var1 = var1raw,
  Var2 = var2raw
  
)


scaled_df <- scale_variables(df, c("Var1", "Var2"))


print(scaled_df)