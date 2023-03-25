
# ========
# script.R 
# ========

# Utility functions: 
# ls_csv | ls_txt | sd

# rm(list = ls()) => ctl-shft-F10

# List CSV files ----------------------------------------------------------

ls_csv <- function(){
  
  dir(path = ".", "*.csv")
}

# List text files ---------------------------------------------------------

ls_txt <- function(){
  
  dir(path = ".", "*.txt")
}

# Set directory (sd) ------------------------------------------------------

sd <- function(){
  mydirs <- c("Quit",
              "C:/Users/markc/Documents/class",
              "C:/Users/markc/Documents/code",
              "C:/Users/markc/Downloads")
  
  cat("-- -------------------\n")
  cat("ID Directory\n")
  cat("-- -------------------\n")
  
  i <- 1 
  while (i <= length(mydirs)) {
    cat(as.character(i), mydirs[i], "\n")
    
    i <- i + 1
  }
  
  curd <- getwd()
  cat("Current Dir: ", curd, "\n")
  n <- readline("Change to? ")
  
  if (n == 1) {
    print("Bye!")
  } else {
    n <- as.integer(n)
    d <- mydirs[n]
    setwd(d)
    cat("Current Dir: ", d, "\n")
  }
  
}

