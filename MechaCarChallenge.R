# import library
library(dplyr)
#read and import CSV
mechaCar <- read.csv(file= 'mechaCar_mpg.csv', check.names = F,stringsAsFactors = F)
#Linear Regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar)
# Summary of MPG Linear Regression Model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar))

# Importing Suspension data
sus_coil <- read.csv(file = 'Suspension_Coil.csv', check.names = F,stringsAsFactors = F)
# Creating a total summary for Suspension Coil data
total_summary <- sus_coil %>% summarize(mean(PSI),median(PSI),var(PSI), sd(PSI), .groups = 'keep')
# Creating a lot summary
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI),median(PSI),var(PSI), sd(PSI), .groups= 'keep')

# Creating T-tests for PSI across all lots
t.test(sus_coil$PSI,mu=1500)
# T-tests for each lot separately 
t.test(subset(sus_coil$PSI,sus_coil$Manufacturing_Lot=='Lot1'),mu=1500)
t.test(subset(sus_coil$PSI,sus_coil$Manufacturing_Lot=='Lot2'),mu=1500)
t.test(subset(sus_coil$PSI,sus_coil$Manufacturing_Lot=='Lot3'),mu=1500)