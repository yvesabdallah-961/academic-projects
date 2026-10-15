# R data analysis

# Reproducible simulation
set.seed(123)

# Generate the vector x
x <- rexp(20, rate = 2)  # 20 exponential(rate = 2) random numbers

# Initialize the counter
count_gt1 <- 0

# Loop over all elements of x
for (i in 1:length(x)) {
  if (x[i] > 1) {
    count_gt1 <- count_gt1 + 1  # update the counter
  }
}

print(count_gt1)

# Compare with built-in function
print(count_gt1 == sum(x > 1))  # check against sum(x > 1)


# Air-quality data filter
# Put pollution.csv in the same folder as this R script before running it.

# 1. Read the CSV file
df <- read.csv("pollution.csv")

# 2. Filter rows for the specific date and hour
filtered <- df[df$Date == "20140101" & df$HrMn == 1100, ]

# 3. Keep only rows where PM2.5 is greater than 50
high_pm <- filtered[filtered$PM2.5 > 50, ]

# 4. Print the result
print(high_pm$Name)
print(high_pm$PM2.5)
