
###Vectors
# As R is built for analyzing large data, we must learn how to handle a sequence of numbers or a matrix of numbers. Let’s first look at a sequence of numbers stored in a vector. Instead of storing a single numeric value, we can create a vector consisting of multiple numeric values by using a function c().

# c()
v1 = c(1, 5.5, 1e2)
v2 = c(0.14, 0, -2)
# This function can also be used to combine two vectors, such as v1 and v2, into a variable v3:

v3 = c(v1, v2)
v3
## [1]   1.00   5.50 100.00   0.14   0.00  -2.00
# When we have a vector with more than one value, we can subset the vector using square brackets. Enter an index within square brackets following a variable to retrieve a single value corresponding to this index. Here we look at v3, and we only want to get the second element.

v3[2]


###Matrix
##matrix()
# the matrix function
# R wants the data to be entered by columns starting with column one
# 1st arg: c(2,3,-2,1,2,2) the values of the elements filling the columns
# 2nd arg: 3 the number of rows
# 3rd arg: 2 the number of columns

A <- matrix(c(2,3,-2,1,2,2),3,2)
A


MA<-matrix(1:6,nrow = 3,ncol = 2)
MA
dim(MA)

MB<-matrix(7:9,nrow = 3,ncol = 1)
MB


# cbind()
# rbind()

rbind(MB,c(10,20,25))  ## Add row

rbind(MA,c(10,20))

cbind(MA,MB)  ## Add column


####Array
# array()

vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names,column.names,
                                                                  matrix.names))
print(result)

###Data Frame
# data.frame()
df <- data.frame(dose=c("D0.5", "D1", "D2"),
                 len=c(4.2, 10, 29.5))
head(df)


####List
# list()
my.list<-list(MA,df)
my.list[1]
my.list[2]