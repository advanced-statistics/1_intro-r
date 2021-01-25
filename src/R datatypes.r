#basic datatypes
x <- "advanced statistics"
x
y <- 1:10
y
length(y)
typeof(y)
z<-2.5
z
typeof(z)
bool <- TRUE
bool
complexnr <- 1+4i
complexnr

#vector
v <- c(1,2,3)
v
vbool <- c(TRUE, TRUE, TRUE, TRUE)
vbool
students <- c("John", "Bill", "Ann")
students
newstudents <- c(students, "Tracy")
newstudents
xx <- c("a", NA, "c", "d", NA)
xx
is.na(xx)

#matrix
m2x2 <- matrix(c(1,2,3,4,5,6,7,8), nrow = 2, ncol = 4)
m2x2
c1 <- 1:3
c2 <- 11:13
cc <- cbind(c1,c2)
rr <- rbind(c1,c2)
cc
rr

#list
mylist <- list(course = "advanced statistics", students = newstudents, data = m2x2 )
mylist

mymatrix <- matrix(c(1, "me", 3, "you", 5, 6), nrow = 2, ncol = 3)
mymatrix

#data frame
df <- data.frame(code = letters[1:10], x = 1:10, y = 11:20)
df
head(df)
names(df)
dim(df)
#end



