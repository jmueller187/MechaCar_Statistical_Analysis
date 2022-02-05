# Load dplyr package
library(dplyr)

# Import & read MechCar_mpg csv file
MechaCar_table <- read.csv(file = 'MechaCar_mpg.csv')

# Create multiple linear regression model
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table)

# Retrieve statistical metrics from multiple linear regression model
summary(mecha_lm)

# Import & read SuspensionCoil csv file
SuspensionCoil_table <- read.csv(file = 'Suspension_Coil.csv')

# Create total_summary data frame for mean, median, variance and standard deviation of PSI column
total_summary <- SuspensionCoil_table %>%  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Create Lot summary data frame for mean, median, variance and standard deviation of PSI column
lot_summary <- SuspensionCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Create t-test to test PSI across all manufacturing lots
t.test((SuspensionCoil_table$PSI),mu=(total_summary$Median))

# Create t-test to test PSI across Lot 1
lot1 <- subset(SuspensionCoil_table, Manufacturing_Lot == "Lot1")
t.test((lot1$PSI),mu=(total_summary$Median))

# Create t-test to test PSI across Lot 2
lot2 <- subset(SuspensionCoil_table, Manufacturing_Lot == "Lot2")
t.test((lot2$PSI),mu=(total_summary$Median))

# Create t-test to test PSI across Lot 3
lot3 <- subset(SuspensionCoil_table, Manufacturing_Lot == "Lot3")
t.test((lot3$PSI),mu=(total_summary$Median))