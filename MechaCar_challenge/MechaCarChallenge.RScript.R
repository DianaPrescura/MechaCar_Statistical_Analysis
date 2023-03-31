# Deliverable 1
# 1. Use the library() function to load the dplyr package
library(dplyr)

# 2. Import and read in the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
mecha_mpg <- read.csv(file='./MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# 3. Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

# 4. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg))

# Deliverable 2
# 1. Import and read suspension_coil.csv
suspension_coil <- read.csv(file='./Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# 2. Create a total_summary data frame using summarize()
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# 3. # Create a lot_summary data frame using group_by() and summarize()
# to group each manufacturing lot by the mean, median, variance and sd.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)
                                            
# Deliverable 3 
# Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_coil$PSI, mu=1500)                                                              
                                                                             
# Write 3 more scripts using t.test() and its subset() argument to determine if the PSI for 
# each manufacturing lot is statistically different from the
# population mean of 1500 pounds per square inch.

# Lot1
t.test((subset(suspension_coil, Manufacturing_Lot=='Lot1'))$PSI, mu=1500)

# Lot2
t.test((subset(suspension_coil, Manufacturing_Lot=='Lot2'))$PSI, mu=1500)

# Lot3
t.test((subset(suspension_coil, Manufacturing_Lot=='Lot3'))$PSI, mu=1500)                               

