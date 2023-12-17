
###Basic calculation
6+4
# and we could assign the result of the calculation to a variable:

x <-  6+4
print(x)
## [1] 10
# A math operation could be done using two numeric variables. For instance, we can create another variable y:

y <-  4
x / y
## [1] 2.5
# R has many built-in mathematical and statistical functions that are intuitively named and easy to use. You can use exponentiation:

x^2
## [1] 100
# or calculate a natural logarithmic value by using a function log():

log(x)


#######Math calculation for dataframe
# Computing Column & Row Sums
# Please note the uppercase S

A <- matrix(c(2,3,-2,1,2,2),3,2)
A

c <- colSums(A)
c


r<- rowSums(A)
r

a <- sum(A)
a


# Computing Column & Row Means
# note the uppercase M

cm <- colMeans(A)
cm

rm <- rowMeans(A)
rm
### Calculate the average for the whole numbers 
m <- mean(A)