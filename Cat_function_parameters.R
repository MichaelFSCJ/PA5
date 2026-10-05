# COP2073c - Programming Assignment 5
# Michael Carpenter
# 10/4/2026
# Display cat function parameters examples in a data frame


# Step 1 - Create the data frame showing argument matching for cat()
arg_matching <- data.frame(
  "Type" = c("Partial", "Positional", "Exact"),
  "Example" = c(
    paste0(
      "cat(c('A', 'B', 'C'), c('D', 'E', 'F'), ",
      "se = ' ', fi = 'output.txt', ap = TRUE)"
    ),
    paste0(
      "cat(c('A', 'B', 'C'), c('D', 'E', 'F'), ",
      "'output.txt', ' ', TRUE)"
    ),
    paste0(
      "cat(c('A', 'B', 'C'), c('D', 'E', 'F'), ",
      "sep = ' ', file = 'output.txt', append = TRUE)"
    )
  )
)

# Write to CSV File
write.csv(x = arg_matching, file = 'cat-argmatching.csv', row.names = FALSE)

# Delete from global environment
rm(arg_matching)

# Read CSV file to recreate data frame
arg_matching <- read.csv(file = 'cat-argmatching.csv')

#Display dataframe using View
View(arg_matching)
