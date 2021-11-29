# import library
library(dplyr)
#read and import CSV
mechaCar <- read.csv(file= 'mechaCar_mpg.csv', check.names = F,stringsAsFactors = F)
#Linear Regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar))