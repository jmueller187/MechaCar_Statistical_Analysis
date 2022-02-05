# Load dplyr package
library(dplyr)

# Import & read MechCar_mpg csv file
MechaCar_table <- read.csv(file = 'MechaCar_mpg.csv')

# Create multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table)

# Retrieve statistical metrics from multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table))

# Import & read SuspensionCoil csv file
SuspensionCoil_table <- read.csv(file = 'Suspension_Coil.csv')

# Create total_summary data frame for mean, median, variance and standard deviation of PSI column
total_summary <- SuspensionCoil_table %>%  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Create Lot summary data frame for mean, median, variance and standard deviation of PSI column
lot_summary <- SuspensionCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

