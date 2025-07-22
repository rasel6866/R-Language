
#******if Statement
H <- 24  
if (H > 10) {
  print("H is greater than 10")
}

H <- 1
if (H < 11) {
  print("H is less than 10")
}

#if....else statement

A<-6
if(A>9)
{

  print("A is greter than 9")

} else {   
  print("A is 9 or less")
}

#=========if…else if…else Ladder

score <- 89
if (score >= 92) {
  print("Grade A")
} else if (score >= 85) {
  print("Grade B")
} else if (score >= 69) {
  print("Grade C")
} else {
  print("Grade F")
}

#for Loop============
for (i in 1:10)
  print(paste("Iteration",i))


#repeat Loop (with break)
i <- 2
repeat {
  print(i)
  i <- i + 1
  if (i > 10) break
}

#next Statement (skip to next iteration)
for (i in 1:10) {
  if (i == 7) next
  print(i)
}

#break Statement (exit the loop)
for (i in 1:10) {
  if (i == 4) break
  print(i)
}


#.............Built-in Functions
#mean()
numbers <- c(100, 200, 300, 400, 500)
mean(numbers)  # Output: 300

sum(numbers) #output:1500

length(numbers) #output: 5

#round()
pi_val <- 3.14159
round(pi_val, 2)  # Output: 3.14


paste("S.M", "RASEL")  # Output: "S.M RASEL"



#-----User-Defined Functions


#Simple function to add two numbers
add_numbers <- function(R, B) {
  return(R + B)
}

add_numbers(10, 66)  # Output:76

#Function to check if a number is even
is_even <- function(y) {
  if (y %% 2 == 0) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

is_even(4)  # Output:TRUE

#Function to check if a number is even
is_even <- function(t) {
  if (t %% 2 == 0) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

is_even(7)  # Output:FALSE


#Function with default parameter
greet <- function(name = "User") {
  paste("jojo", name)
}

greet()         # Output: "jojo User"

greet("ALI")   # Output: "jojo ALI"


#Anonymous (Lambda) Function with sapply()
numbers <- 1:5
squared <- sapply(numbers, function(x) x^2)
print(squared)  # Output: 1 4 9 16 25


#DATA READ 

#Reading a CSV File
data <- read.csv("C:\\Users\\student\\Desktop\\Data science\\sample_dataset.csv")
head(data)  # View the first few rows



#Reading a Text File (tab-delimited)
data <- read.table("C:/Users/student/Downloads/sample_tab_delimited - Copy.txt", header = TRUE, sep = "\t")
head(data)


#Reading Data from a URL
url <- "https://raw.githubusercontent.com/uiuc-cse/data-fa14/gh-pages/data/iris.csv"
data <- read.csv(url)
head(data)

