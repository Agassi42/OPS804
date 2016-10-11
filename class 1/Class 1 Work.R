
a <- 1

msg <- "hello world"

a <- 12

d = c(1,2,3,4,5,6,7,8,9,10)
e <- 1:20
e[5]

# numeric
x <- c(.2,.5)

# logical
x2 <- c(TRUE, FALSE)

# characters 
i <- c("a", "b", "c")

# integer
j<- 9:29

# complex
k <- c(1+0i, 2+4i)

# mix. int becomes string, cant have different types
y <- c(1.2, "a")

# matrix

m <- matrix(nrow = 2, ncol = 2)
dim(m)
m

m <- matrix(1:6, nrow = 2, ncol = 3)
m
m[5]
m[2,3]
m

n <- c(2,3,4)
m <- rbind(m,n)
m
o <- c(5,7,2)
m <- cbind(m,o)
m


flights <- read.csv("class exercise/data/flights/On_Time_On_Time_Performance_2010_1.csv")

mean(flights$ArrDelayMinutes, na.rm = T)
median(flights$ArrDelayMinutes, na.rm = T)
