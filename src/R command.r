##Basic command i R

##Creating vectors
a <- c(0.5, 0.6) 		##numeric
b <- c(TRUE, FALSE) 	##logical
c <- c("a", "b", "c") 	##character
d <- 9:29				##integer
e <- c(1+0i, 2+4i)		##complex
f <- vector("numeric", length = 10)

x <- vector("numeric", length = 10 ) 
x <- list( TRUE, 1, "a")
rbind( ) & cbind( ) 
?read.csv
args(read.csv) 

#read.table (file, header = FALSE, sep = "", quote = "\"'", dec = ".") 
#read.csv (file, header = TRUE, sep = ",", quote = "\"", dec = ".")
#rm ( x )	

data <- read.csv("E:/Practice session -Week 2/hbat.csv", header = TRUE)
hist(data$x6)
plot(data$id, data$x8)

hist(x = data$x6, xlab = "Product Quality", main = "Product Quality of HBAT", col = "Red")
plot(density(data$x6), xlab = "id", ylab = "Product Quality", main = "HBAT Plot Example", col = "red")
polygon(density(data$x6), xlab = "id", ylab = "Product Quality", main = "HBAT Plot Example", col = "red")
boxplot(data$x6, xlab = "id", ylab = "Product Quality", main = "Boxplot of Product Quality", col = "red")
boxplot(x6~x1, data = data, xlab = "id", ylab = "Product Quality", main = "Boxplot of Product Quality", col = "red")

#mean(data$x10)
#median(data$x10)
#sd(data$x10)
#cor(data[ ,8:15])
summary(data$x10)

