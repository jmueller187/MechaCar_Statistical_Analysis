# Load dplyr package
library(dplyr)

# Import & read csv file
MechaCar_table <- read.csv(file = 'MechaCar_mpg.csv')

# Create multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table)

# Retrieve statistical metrics from multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table))
