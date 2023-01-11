
MyData<-read.csv("measurements.csv", header=T)
#Load the dplyr package
library(dplyr)
#Add a new column that calculates volume using the equation for volume of a cylinder πr^2h
MyData<-MyData %>% 
  mutate(Volume=pi*((MyData$Limb_width/2)^2)*MyData$Limb_length)
write.csv(MyData, "measurements.csv", row.names=TRUE)  