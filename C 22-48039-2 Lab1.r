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


#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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


