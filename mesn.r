mean <- function(myVector) # Creating function to find the mean
{
  # The formula for finding mean is sum / 2
  sum = 0 
  myOutputVector <- vector("integer", 0)
  for(i in myVector)
  {
    sum = sum + as.integer(i) # sum all the values in the vector
  }
  return(sum / length(myVector)) # return the mean
}

median <- function(myVector) # Creating function to find the median
{
  # median is the middle value of the sorted vector
  sort(myVector) # sort is a built in function. You can write your own soretd function as well
  myVectorLength = length(myVector)
  middle = myVectorLength / 2
  return(as.integer(myVector[middle]))
}

# Driver Code
path <- "data.txt" # path of the input file
fileData <- file(path, open = "r") # open the file
lines <- readLines(fileData) # read all the lines present in the file

myVector <- vector("numeric", 0) # create empty vector to save all values