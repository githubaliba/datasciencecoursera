pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
}

read_numfile <- function(num,path=".") {
  filepath <- paste(c("rprog-003/ProgAssignment1/",path,"/",formatC(num, width=3,flag="0"),".csv"),collapse="")
  read.csv(filepath)
}

col_mean <- function(y,excludeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc)
  {
    means[i] <- mean(y[,i], na.rm = excludeNA)
  }
  means
}
