# Importing Libraries
library(ggplot2)
library(dplyr)

# Importing Dataset
expenses <- read.csv("dailyexpenses.csv")

# Viewing Dataset
View(expenses)

str(expenses)
# Date type Conversion
expenses$Date <- as.Date(expenses$Date, "%d/%m/%y")
View(expenses)
str(expenses)

# Data frame for Comparing Expenses
tot <- expenses[, 2:9]
total <- colSums(tot)
detail <- c("food", "groceries", "medical", "fuel", "toll", 
            "phone", "electricity", "miscellaneous")

tot_each <- data.frame(detail, total)
View(tot_each)

# Bar plot of expenses
ggplot(data = tot_each, aes(x = detail, y = total))+ geom_bar(stat = "identity", fill = "green") + 
  labs(x = "Items", y = "Expenses", title = "Comparing Expenses")

# Dataframe for Daily Total Expenses
cm <- expenses[, 2:9]
dt <- expenses[, 1]
rs <- rowSums(cm)
daily_tot <- data.frame(dt, rs)
View(daily_tot)

# Line Plot for daily total expenses
ggplot(data = daily_tot, aes(x = dt, y = rs)) + 
  geom_line(color = "red", size = 2) + 
  labs(x = "Date", y = "Expenses", title = "Total Expenses")

# Dataframe of Daily Medical Expenses
md <- expenses[, 3]
de <- expenses[, 1]
daily_med <- data.frame(de, md)
View(daily_med)

# Scatter Plot of Daily Medical Expense
ggplot(data = daily_med, aes(x = de, y = md)) + geom_point() + 
  labs(x = "Expenses", y = "Medical", title = "Medical Expenses")

# Histogram of Medical Expenses
ggplot(expenses, aes(x = Medical)) + 
  geom_histogram(binwidth = 5, color = "black", fill = "blue")
