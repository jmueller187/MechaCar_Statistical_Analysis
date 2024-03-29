# MechaCar_Statistical_Analysis
Automotive data analysis using R and Statistics

## Linear Regression to Predict MPG
### Our analysis was performed to answer the following questions:
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?<br>
According to the results as seen in Image 1 below, vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words, vehicle length and ground clearance have a significant impact on MPG per the test results.

- Is the slope of the linear model considered to be zero? Why or why not?<br>
The slope of the linear model is not considered to be zero due to the following: The p-value of our linear regression analysis is 5.08 x 10-8, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?<br>
Our testing showed that the linear model does predict mpg of MechaCar prototypes effectively, as indicated by the returned R-squared value from our linear regression test. This value ended up being 0.7149, which tells us that over 71 percent of our MPG metric can be explained with this linear model and the significant impacts of vehicle length and ground clearance.

Image 1:<br>
![Liner regression screenshot](https://github.com/jmueller187/MechaCar_Statistical_Analysis/blob/main/Resources/LinearRegressionOutput.png)

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?<br>
For the total_summary data frame (shown in Table 1) which included all three manufacturing lots, we saw that the combined lots met the requred design specification with a  variance of 62.59.<br>

Table 1:<br>
![total_summary data frame](https://github.com/jmueller187/MechaCar_Statistical_Analysis/blob/main/Resources/TotalSummaryDataFrame.png)

For the lot_summary dataframe (shown in Table 2) which included separate summaries for each individual lot, we saw that both Lot 1 and Lot 2 met the required design specification with variances of 0.98 and 7.47 respectively. Lot 3, on the other hand, failed to meet the design specification with a variance of 170.29.<br>

Table 2:<br>
![lot_summary data frame](https://github.com/jmueller187/MechaCar_Statistical_Analysis/blob/main/Resources/LotSummaryDataFrame.png)

## T-Tests on Suspension Coils
We used the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch (PSI). Our hypotheses for these tests were:<br>
Null Hypothesis: There is no statistical difference between the observed sample mean PSI and its presumed population mean of 1,500 PSI<br?
Alternate Hypothesis: There is a statistical difference between the observed sample mean PSI and its presumed population mean of 1,500 PSI<br>
Assumed level of significance: 0.05

Our results were as follows:<br>
Combined manufacturing lots - As seen in Image 2, the p-value for the combined lots was 0.06028. With this p-value being above our level of significance, we failed to reject the Null Hypothesis and conclude there is no statistical difference between the observed combined lots sample mean PSI and its presumed population mean of 1,500 PSI.<br>

Image 2:<br>
![Combined lots image](https://github.com/jmueller187/MechaCar_Statistical_Analysis/blob/main/Resources/TTestTotalSummary.png)

Lot 1 - As seen in Image 3, the p-value for the combined lots was 1. With this p-value being above our level of significance, we failed to reject the Null Hypothesis and conclude there is no statistical difference between the Lot 1 observed sample mean PSI and its presumed population mean of 1,500 PSI.<br>

Image 3:<br>
![Lot 1 image](https://github.com/jmueller187/MechaCar_Statistical_Analysis/blob/main/Resources/TTestLot1Summary.png)

Lot 2 - As seen in Image 4, the p-value for the combined lots was 0.6072. With this p-value being above our level of significance, we failed to reject the Null Hypothesis and conclude there is no statistical difference between the observed Lot 2 sample mean PSI and its presumed population mean of 1,500 PSI.<br>

Image 4:<br>
![Lot 2 image](https://github.com/jmueller187/MechaCar_Statistical_Analysis/blob/main/Resources/TTestLot2Summary.png)

Lot 3 - As seen in Image 5, the p-value for the combined lots was 0.04168. With this p-value being below our level of significance, we rejected the Null Hypothesis and conclude there is a statistical difference between the observed Lot 3 sample mean PSI and its presumed population mean of 1,500 PSI.<br>

Image 5:<br>
![Lot 3 image](https://github.com/jmueller187/MechaCar_Statistical_Analysis/blob/main/Resources/TTestLot3Summary.png)

## Study Design: MechaCar vs Competition
Our final task was to design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

What metric or metrics are you going to test?
- We chose to include metrics for horsepower and engine size (i.e. 4-cylinder, 6-cylinder or 8-cylinder) to test against MPG, as manufacturers often indicate engine size influences fuel efficiency.<br>

What is the null hypothesis or alternative hypothesis?
- Null Hypothesis: There is no statistical difference between engine size, horsepower and vehicle fuel efficiency (MPG).
- Alternative Hypothesis: There is a statistical difference between engine size, horsepower and vehicle fuel efficiency (MPG).<br>

What statistical test would you use to test the hypothesis? And why?
- We chose to select linear regression testing for further analysis, because we have the option to use either single linear regression (i.e. MPG vs. horsepower or MPG vs. engine size) or multiple linear regression (i.e. MPG vs. horsepower + engine size) to test our hypotheses and determine if statistical differences exist or not.<br>

What data is needed to run the statistical test?
- We would need to gather horsepower data on all the MechaCar prototype vehicles that were part of our study as well as the engine size of each vehicle. In addition, we would need a data set of competitor vehicles containing all of these metrics so we could perform comparision between the prototype and currently manufactured vehicles.
