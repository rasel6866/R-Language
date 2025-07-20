100 + 100           #simple Arithmetic

200 - 100           #simple Arithmetic

100 + 100 * 100     #Operator precedence 

1 ^ 2               #Exponentiation

sqrt(11)            #Basic msthematical funtion are available

pi                  #The constant pi is predefined


i <- 2              #can define variable 

j <- 4             #using "<-" operator to set avalues

k <- 6


i * j * k


I * J * K          # variable names are case sensitive 

#printing values

a <- 11
a
print(a)

#Built in function Math
a <- 10
b <- -12
c <- 3.44444
d <- "FREE"
e <- "DATA SCIENCE"
f <- "AIUB"


abs(b)
sqrt(a)
ceiling(c)
floor(c)

#Built in function Character 
g <- tolower(d)
print(k)

h <- toupper(d)
print(h)

l <- strsplit(f,split= "")
print(l)

#Built in function Statistical    #Min
z <- c(2,4,7)
t <- min(z)
print(t)

z <- c(2,4,7)                     #Max
t <- max(z) 
print(t)

z <- c(2,4,7)
t <- sum(z)
print(t)

#vectore

# Creating Different Types of Vectors
# Numeric Vector
num_vec <- c(4, 4, 4, 4, 4)
print(num_vec)


# Character Vector
char_vec <- c("AAA", "BBB", "CCC")
print(char_vec)


# Logical Vector
log_vec <- c(FALSE, FALSE, TRUE, TRUE)
print(log_vec)

# Vector Operations
# Arithmetic Operations
vec1 <- c(1, 4, 10)
vec2 <- c(1, 5, 5)

sum_vec <- vec1 + vec2  # Element-wise addition
prod_vec <- vec1 * vec2 # Element-wise multiplication

print(sum_vec)   # Output: 2 9  15
print(prod_vec)  # Output: 1 20 50

#**********************************************************

# Accessing Elements in a Vector
# Create a vector
num_vec <- c(10, 20, 30, 40, 50)

# Access elements using index (1-based index)
print(num_vec[4])  # Output: 40

# Access multiple elements
print(num_vec[c(1, 3, 5)])  # Output: 10 30 50

# Access elements using a condition
print(num_vec[num_vec  < 25])  # Output: 10 20 


#----------------------------------------------------------------
# Modifying a Vector
# Modify an element
num_vec[4] <- 500
print(num_vec)  # Output: 10 20 30  500  50 

# Append new elements
num_vec <- c(num_vec, 60, 70)
print(num_vec)  # Output: 10 20 30 500 50 60 70

#************************************************************


# Vector Functions
vec <- c(5, 10, 15, 20, 25)

# Length of the vector
print(length(vec))  # Output: 5

# Sum of all elements
print(sum(vec))  # Output: 75

# Mean (average) of elements
print(mean(vec))  # Output: 15

# Sorting a vector
sorted_vec <- sort(vec, decreasing = TRUE)
print(sorted_vec)  # Output: 25 20 15 10 5


#+++++++++++++++++++++++++++++++++++++++++++++++++++
# Sequence and Repetition in Vectors
# Sequence from 1 to 10
seq_vec <- seq(1, 10, by = 2)  # Steps of 2
print(seq_vec)  # Output: 1 3 5 7 9

# Repeat elements
rep_vec <- rep(c(1, 2, 3), times = 3)  # Repeat entire vector
print(rep_vec)  # Output: 1 2 3 1 2 3 1 2 3
                          #Matrices
# Creating a 3x3 matrix (filled column-wise by default)
mat <- matrix(1:9, nrow = 3, ncol = 3)
print(mat)


# Filling a Matrix Row-Wise
mat <- matrix(1:9, nrow = 3, byrow = TRUE)
print(mat)



# Naming Rows and Columns
# Creating a matrix
mat <- matrix(1:9, nrow = 3)

# Assigning row and column names
rownames(mat) <- c("Row1", "Row2", "Row3")
colnames(mat) <- c("Col1", "Col2", "Col3")

print(mat)


# Accessing Elements in a Matrix
# Create a 3x3 matrix
mat <- matrix(1:9, nrow = 3)

# Access element at row 2, column 3
print(mat[2, 3])  # Output: 8

# Access entire row 1
print(mat[1, ])  # Output: 1 4 7

# Access entire column 2
print(mat[, 2])  # Output: 4 5 6

# Matrix Arithmetic
mat1 <- matrix(1:4, nrow = 2)
mat2 <- matrix(5:8, nrow = 2)

# Matrix addition
sum_mat <- mat1 + mat2
print(sum_mat)

# Matrix multiplication (element-wise)
prod_mat <- mat1 * mat2
print(prod_mat)

# Matrix multiplication (dot product)
dot_prod_mat <- mat1 %*% mat2  # %*% for matrix multiplication
print(dot_prod_mat)


#Transpose and Inverse of a Matrix
# Transpose of a matrix
t_mat <- t(mat)
print(t_mat)

# Inverse of a matrix (for square matrices)
square_mat <- matrix(c(2, 3, 1, 4), nrow = 2)
inv_mat <- solve(square_mat)
print(inv_mat)

#*********************Arrays
# Creating an array with dimensions (3x3x2)
arr <- array(1:18, dim = c(3, 3, 2))
print(arr)


# Accessing Elements in an Array
# Create a 3x3x2 array
arr <- array(1:18, dim = c(3, 3, 2))

# Access element at [2nd row, 3rd column, 1st layer]
print(arr[2, 3, 1])  # Output: 8

# Access entire 2nd row from Layer 1
print(arr[2, , 1])

# Access entire 3rd column from Layer 2
print(arr[, 3, 2])

#Performing Operations on Arrays
# Creating two 3x3x2 arrays
arr1 <- array(1:18, dim = c(3, 3, 2))
arr2 <- array(19:36, dim = c(3, 3, 2))

# Element-wise addition
sum_arr <- arr1 + arr2
print(sum_arr)

# Element-wise multiplication
prod_arr <- arr1 * arr2
print(prod_arr)

# Applying Functions to Arrays
# Creating an array
arr <- array(1:18, dim = c(3, 3, 2))

# Sum of all elements in the array
print(sum(arr))

# Mean of all elements
print(mean(arr))

# Apply function to each row (margin = 1)
apply(arr, MARGIN = 1, FUN = sum)

# Apply function to each column (margin = 2)
apply(arr, MARGIN = 2, FUN = mean)


#**************************Data Frames

# Creating a simple data frame
df <- data.frame(
  ID = c(101, 102, 103, 104),
  Name = c("Ali", "Boby", "Keya", "Dadu"),
  Age = c(23, 25, 22, 24),
  Score = c(89.5, 76.0, 91.2, 88.8),
  Passed = c(TRUE, TRUE , TRUE, FALSE)
)

# Print the data frame
print(df)

# Accessing Elements in a Data Frame
# Access a single column
print(df$Name)  # Output: Alice Bob Charlie David

# Access a specific row (row 2)
print(df[2, ])  

# Access a specific element (Row 3, Column "Score")
print(df[3, "Score"])  # Output: 91.2

# Access multiple columns
print(df[, c("Name", "Score")])  

# Access multiple rows
print(df[1:2, ])  # First two rows

# Add a new column 'Grade'
df$Grade <- c("A", "B", "A+", "A-")
print(df)

# Filter students who passed
passed_students <- df[df$Passed == TRUE, ]
print(passed_students)

# Filter students with Score > 85
high_scorers <- df[df$Score > 85, ]
print(high_scorers)

df_sorted <- df[order(df$Age), ]
print(df_sorted)

# Sorting by Score (Descending)
df_sorted_desc <- df[order(-df$Score), ]
print(df_sorted_desc)

# Changing a value (Changing Bob’s Score to 80)
df$Score[df$Name == "Bob"] <- 80
print(df)

# Renaming column names
colnames(df) <- c("Student_ID", "Student_Name", "Student_Age", "Exam_Score", "Passed_Exam", "Final_Grade")
print(df)

# Remove a column
df$Grade <- NULL
print(df)

# Remove a row (removing row 2)
df <- df[-2, ]
print(df)

# Get summary statistics
summary(df)

# Get structure of the data frame
str(df)


#********************List

# Creating a list with different data types
my_list <- list(
  Name = "Ali",
  Age = 25,
  Scores = c(78, 89, 80),
  Passed = TRUE
)

# Print the list
print(my_list)

# Access by index
print(my_list[[1]])  # Output: "Ali"

# Access by name
print(my_list$Scores)  # Output: 78 89  80

# Access specific elements within a list item
print(my_list$Scores[2])  # Output: 85

# Change an element
my_list$Age <- 26
print(my_list$Age)  # Output: 26

# Add a new element
my_list$Country <- "UK"
print(my_list)

# Remove an element
my_list$Passed <- NULL
print(my_list)

# Creating a list with a matrix and a data frame
my_complex_list <- list(
  Numbers = c(1, 2, 3, 4),
  Matrix = matrix(1:9, nrow = 3),
  DataFrame = data.frame(ID = c(101, 102), Name = c("Riya", "keya"))
)

# Print the list
print(my_complex_list)

# Access elements inside the matrix
print(my_complex_list$Matrix[2, 3])  # Access row 2, column 3

list1 <- list(A = 1:5, B = "Hello")
list2 <- list(C = c(TRUE, FALSE), D = matrix(1:4, nrow = 2))

# Merge lists
merged_list <- c(list1, list2)
print(merged_list)


# Convert list to data frame
list_to_df <- data.frame(
  Name = c("ABC", "BB"),
  Age = c(34, 33),
  Score = c(99, 97)
)

print(list_to_df)






