# Class exercise 2

library(dplyr)
## Assignments

### From the imported data.frame flights.2010 calculate the median and the mean departure delay (DepDelayMinuts)

mean(flights.2010$ArrDelayMinutes, na.rm = T)
median(flights.2010$ArrDelayMinutes, na.rm = T)

### From flights.2010$DepDelayMinutes calculate the variance and standard deviation

var(flights.2010$DepDelayMinutes, na.rm = T)
sd(flights.2010$DepDelayMinutes, na.rm = T)

### Filter all flights from American Airlines and calculate median, mean, variance and standard deviation
flights.2010 %>% 
  filter(Carrier == "AA") %>%
  summarise(
    median = median(DepDelayMinutes, na.rm = T),
    mean = mean(DepDelayMinutes, na.rm = T),
    variation = var(DepDelayMinutes, na.rm = T),
    stdev = sd(DepDelayMinutes, na.rm = T)
  )

### Filter all flights from US Airways and calculate median, mean, variance and standard deviation

### What can you say about the difference between these statistics?

### Create a full descriptive statistics summary using the dplyr package for flights.2010