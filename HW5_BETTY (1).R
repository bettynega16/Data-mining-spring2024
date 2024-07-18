# 1.Create a vector named my_vector containing the numbers 1 through 5.
my_vector<-c(1:5)
my_vector

# 2.Use the rep() function to create a vector that repeats the sequence 1, 2 three times.
rep_vector<-rep(1:2,3)
rep_vector

# 3.Use the rep() function to create a vector that repeats the sequence 1, 2 three times.
seq_vector<-seq(5,15,2)
seq_vector

# 4.Create a vector random_vector of 10 random numbers drawn from a normal distribution with a mean of 0 and a standard deviation of 1.
random_vector<- rnorm(10, mean=0, sd=1)
random_vector

# 5.How would you create an empty vector named empty_vector? Specify its type as numeric.
empty_vector<-numeric(0)
empty_vector
class(empty_vector)

# 6.Create a vector with the numbers 10, 20, and 30, and name its components "First", "Second", and "Third", respectively
name_v<-c(10,20,30)
names(name_v)<-c("First","Second","Third")
name_v

# 7.Given a numeric vector x <- c(1, 3, 5, 7, 9), create a new vector that contains only the elements greater than 4.
x<-c(1,3,5,7,9)
x_new<-x[x>4]

# 8.Calculate the sum and product of x <- c(2, 4, 6, 8).
x<-c(2,4,6,8)
sum(x) 
prod(x) 

# 9.Given two vectors, a <- c(1, 2, 3) and b <- c(4, 5, 6), calculate their element-wise sum, difference, and multiplication.
a <- c(1, 2, 3)
b <- c(4, 5, 6)

add_result<-a+b
add_result

diff_result<-a-b
diff_result

multiply_result<-a*b
multiply_result

# 10.Compute the correlation between the vectors x <- c(1, 2, 3, 4, 5) and y <-c(5, 4, 3, 2, 1).
x<-c(1,2,3,4,5)
y<-c(5,4,3,2,1)

cor(x,y)

# 11.Create a 3x3 matrix with elements from 1 to 9, filling the matrix by columns.
matr<-matrix(1:9, nrow=3, ncol=3)
matr

# 12.Name the rows and columns of the matrix created in question 11 as "Row1", "Row2", "Row3" and "Col1", "Col2", "Col3", respectively.
rownames(matr)<-c("Row1","Row2","Row3")
colnames(matr)<-c("Col1","Col2","Col3")
matr

# 13.Extract the second row from the matrix you created in question 11.
matr[2,]

# 14.Add a fourth column, c(10, 11, 12), to the matrix from question 11. Then, remove the second row
matr<- cbind(matr,c(10,11,12))
colnames(matr)<-c("Col1","Col2","Col3","Col4")
matr

matr<-matr[-2,]
matr

# 15.Apply the sum() function to the columns of the matrix from question 11.
matr<-matrix(1:9, nrow=3, ncol=3)
rownames(matr)<-c("Row1","Row2","Row3")
colnames(matr)<-c("Col1","Col2","Col3")
apply(matr,2,sum)

# 16.Given two matrices, A <- matrix(1:4, nrow=2) and B <- matrix(rep(2, 4), nrow=2), calculate their sum and product.
A<-matrix(1:4,nrow=2)
B<-matrix(rep(2,4),nrow=2)

sum_matrix = A+B
prod_matrix = A*B
prod_matrix
sum_matrix

# 17.Create a vector z <- c(1, NA, 3, NA, 5) and write a code snippet to replace the NA values with the average of the non-NA values in z
z <- c(1, NA, 3, NA, 5)
average<-mean(z, na.rm=TRUE)
z[is.na(z)]<- average
z

# 18.Given the matrix M <- matrix(1:9, nrow=3), create a new matrix that contains only elements greater than 5.
M <- matrix(1:9, nrow=3)
new_M<- M[M>5]
new_M

# 19.In the matrix from question 18, replace all elements greater than 5 with the value 0
M <- matrix(1:9, nrow=3)
new_M<- M
new_M[M>5]<-0
new_M
