#Step 1: Load and Inspect Data

# Load and inspect the iris dataset
head(iris)

str(iris)

# Get a comprehensive summary
summary(iris)



#Step 2: Measures of Central Tendency

# Calculate mean
mean(iris$Sepal.Length)

# Calculate median
median(iris$Sepal.Length)

# To find the mode, create a table of frequencies
freq_table <- table(iris$Sepal.Length)
# Find the name of the most frequent value
names(freq_table)[which.max(freq_table)]


#  Step 3: Measures of Dispersion (Variability)


# Calculate the range
range_val <- range(iris$Sepal.Length)
max(range_val) - min(range_val)


# Calculate variance
var(iris$Sepal.Length)


# Calculate standard deviation
sd(iris$Sepal.Length)


# Calculate the Interquartile Range
IQR(iris$Sepal.Length)


# Get specific quantiles (e.g., 25th and 75th percentiles)
quantile(iris$Sepal.Length, probs = c(0.25, 0.75))



#Step 4: Group-wise Descriptive Statistics







 
library(dplyr)

dplyr <- read.csv("C:\Users\student\Desktop\data sc.csv")
head(random)
str(random)
summary(random)

# Calculate mean, sd, and count for each species
iris %>%
  group_by(Species) %>%
  summarise(
    count = n(),
    mean_sepal_length = mean(Sepal.Length),
    sd_sepal_length = sd(Sepal.Length),
    mean_petal_length = mean(Petal.Length),
    sd_petal_length = sd(Petal.Length)
  )



# Read CSV file with correct path format
testt <- read.csv("C:\rrr\rakib.csv")  # or use double backslashes

# View first rows
head(testt)

# Check structure
str(testt)

# Summary stats
summary(testt)


#   Multivariate Analysis



pairs(iris[, 1:4], main = "Scatterplot Matrix of Iris Data", col = iris$Species)


