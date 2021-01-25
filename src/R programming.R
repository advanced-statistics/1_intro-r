############ Practice Session Using R ############

############ R Programming ############

data(mtcars) # call for pre installed dataset in R about car in United States

#### Data Examination ####

# Data quick glance
head(mtcars) # check 6 top row in dataset
head(mtcars, 10) # check 10 top row in dataset
tail(mtcars) # check 6 last row in dataset
tail(mtcars, 10) # check 10 last row in dataset

# Dataset descriptive statistics
summary(mtcars)
sd(mtcars$mpg) #standard deviation

# Check for missing value
colSums(is.na(mtcars))

# simple plot

# barplot
barplot(table(mtcars$cyl), main = "Cylinders mtcars dataset",
        xlab = "Cylinders", ylab = "Frequency")

# scatterplot
plot(mtcars$mpg, mtcars$disp, main = "Miles per gallon and Displacement mtcars dataset",
     xlab = "Miles per gallon", ylab = "Displacement")

# probability distribution
plot(density(mtcars$drat), main = "Probabilty Distribution of Drat mtcars dataset")

# boxplot
boxplot(mtcars$drat, main = "Boxplot of Drat mtcars dataset")
boxplot(mtcars$drat ~ mtcars$cyl, main = "Boxplot of Drat per Cylinders mtcars dataset")

## Subset

# create subset for Column using `$` for variable name
mtcars$mpg

# subset column by variable name
mtcars[, "mpg"]
mtcars[, c("mpg", "drat")]

# create subset using row and column number
mtcars[ ,1]
mtcars[2, ]
mtcars[2,1]

# create subset using value filter
mtcars[mtcars$mpg == 21.0, ]
subset(mtcars, mpg == 21.0)
subset(mtcars, mpg %in% c(21, 22.8, 26))

#### Loop ####

## for loop

# create character vector that contained rownames of mtcars
x <- nrow(mtcars)

# create for loop function to print each column
for (i in c(1:x)) {
  print(rownames(mtcars)[[i]])
}

for(i in c(1:ncol(mtcars))) {
  sd_mtcars <- sd(mtcars[,i])
  print(sd_mtcars)
}

## apply
## apply(x, margin, function)
## margin 1 = row, 2 = column 

apply(mtcars, 1, sd)
apply(mtcars, 2, sd)

## lapply
A <- matrix(seq(1, 9, by = 1), ncol = 3)
A
B <- matrix(seq(4, 15, by = 1), ncol = 3)
B
C <- matrix(rep(c(8, 9, 10), 2), ncol = 2)
C

my_list <- list(A, B, C)
print(my_list)
my_list

lapply(my_list, "[",1, 2)
lapply(my_list, sum)
lapply(mtcars, sd)

## sapply
sapply(my_list, "[",1, 2)
sapply(my_list, sum)
sapply(mtcars, sd)

## tapply
tapply(mtcars$mpg, mtcars$cyl, sd)

## mapply
# Create a 4x4 matrix
Q1 <- matrix(c(rep(1, 4), rep(2, 4), rep(3, 4), rep(4, 4)),4,4)

# Print `Q1`
print(Q1)

# Or use `mapply()`
Q2 <- mapply(rep,1:4,4)

# Print `Q2`
print(Q2)

#### Function ####
df <- data.frame(a  = rnorm(100),
                 b = rnorm(100),
                 c = rnorm(100),
                 d = rnorm(100)
                 )
df

# how to rescale to become between 0 and 1 for each column?
# x - min / max - min
# easy way is to write

dfa <- (df$a - min(df$a, na.rm = TRUE)) / (max(df$a, na.rm = TRUE) - min(df$a, na.rm = TRUE))
dfa
# then you have to create similar function with different argument for each column

dfb <- (df$b - min(df$b, na.rm = TRUE)) / (max(df$b, na.rm = TRUE) - min(df$b, na.rm = TRUE))
dfb

dfc <- (df$c - min(df$c, na.rm = TRUE)) / (max(df$c, na.rm = TRUE) - min(df$c, na.rm = TRUE))
dfc

dfd <- (df$d - min(df$d, na.rm = TRUE)) / (max(df$d, na.rm = TRUE) - min(df$d, na.rm = TRUE))
dfd

# this is inefficient in terms of writing code
# there are some duplication in this code

rng <- range(df$a, na.rm = TRUE)
rng
(df$a - rng[1]) / (rng[2] - rng[1])

#Create a function
rescale <- function(x) {
  rng <- range(x, na.rm = TRUE)
  (x - rng[1]) / (rng[2] - rng[1])
}

rescale(df$a)
rescale(df$b)
rescale(df$c)
rescale(df$d)

# this function is could also been used in iteration function
apply(df, 2, rescale)
apply(mtcars, 2, rescale)

