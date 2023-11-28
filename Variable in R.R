#Variables
name = "VIKKI"
age = 18
Name <- "LEO"
NAME <- "MESSI"
Name


Data Types
# Numeric
num = 44.5
class(num)


# Integer
num1 = 100L
class(num1)

# Complex
cmplx = 10i
class(cmplx)

# Character
Name = "vikki"
class(Name)

# Logical
num2 = TRUE
class(num2)

# Conditional Statements
# If Statement

x <- 5
if(x > 0)
{
  print("Positive number")
  }


# If Else Statement
x <- -5
if(x > 0)
{
  print("Positive number")
} else
{
  print("Negative number")
}

# Nested If-Else Statement
x <- 0
if(x < 0)
{
  print("Negative number")
} else if(x > 0)
{
  print("Positive number")
} else
  print("Zero")

# Loops
# For Loop
x <- c(-10,5,10,44,93)
for (i in x)
{
  print(i)
}


# Nested for loop

for (i in 1:3)
{
  for (j in 1:i)
  {
    print(i * j)
  }
}

# While Loop
i = 0
count = 0

while (count <= 5) 
{
  print(i * i)
  i = i + 1
  count = count + 1
}

# Functions
# Function for Squaring a Number

number = function(x) {
  return(x^2)
}
result = number(5)
print(result)  


# Handling Data in R
# Creating data
employee <- c('Leo', 'Andres', 'Messi')
salary <- c(20000, 23000, 28000)
ID_num = c(30, 19, 10)

# Creating data frame
employee.data = data.frame(employee, salary, ID_num)

# Viewing data frame
View(employee.data)



# Basic info from data frame
print(ncol(employee.data))
print(nrow(employee.data))

# Slicing Column
print(employee.data$employee)

# Slicing Rows
print(employee.data[2:3, ])

# Modifying data
employee.data[2, "ID_num"] <- 15
employee.data

# Saving data frame
write.csv(employee.data, "Employee Details.csv")

# Reading data frame
read.csv("Employee Details.csv")

