#Use the set.seed() function to create reproducible results when using random variables
set.seed(123)
#Create an organism vector with a set of 100 species names, randomly selected from a vector of 5 species names
Organism<-sample(c("Ailuropoda melanoleuca", "Panthera tigris", "Elephas maximus", "Gorilla beringei", "Pongo pygmaeus"), 100, replace=T)
#Create a vector of 100 values for Limb_width, randomly selected
Limb_width<-c(rnorm(100, 40, 5))
#Create a vector of 100 values for Limb_length, randomly selected
Limb_length<-c(rnorm(100, 70, 5))
#Create a vector of 100 values for Observer, randomly selected from a vector of 3 names
Observer<-sample(c("Dr. Jane Goodall", "Dian Fossey", "Dr. Biruté Galdikas"), 100, replace=T)
#Combine all of the vectors into a data.frame
measurements.csv<-data.frame(Organism=sample(c("Ailuropoda melanoleuca", "Panthera tigris", "Elephas maximus", "Gorilla beringei", "Pongo pygmaeus"), 100, replace=T), Limb_width=rnorm(100, 40, 5), Limb_length=rnorm(100, 70, 5), Observer=sample(c("Dr. Jane Goodall", "Dian Fossey", "Dr. Biruté Galdikas"), 100, replace=T))
#Export the data.frame to a csv file called measurements.csv
getwd()
write.csv(measurements.csv, "C:\\Users\\allyjewitt\\Desktop\\BIOL432\\BIOL432_Assignment1\\measurements.csv", row.names=TRUE)