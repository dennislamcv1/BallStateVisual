library(ggplot2)

# Read data
df <- read.csv("Income by states.csv")

# Basic histogram for numeric variable income

ggplot(df, aes(x=income)) + geom_histogram()

# Change the width of bins
ggplot(df, aes(x=income)) + 
  geom_histogram(binwidth=10000) # geom_histogram(bins=10)

# Change colors of outlines and filled color
ggplot(df, aes(x=income)) + 
  geom_histogram(binwidth=10000,color="black", fill="white")

