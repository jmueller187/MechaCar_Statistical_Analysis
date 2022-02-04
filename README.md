# MechaCar_Statistical_Analysis
Automotive data analysis using R and Statistics

## Linear Regression to Predict MPG
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?<br>
According to the results as seen in the screen shot below, vehicle length and ground celarance are statistically unlikely to provide random amounts of variance to the linear model.

- Is the slope of the linear model considered to be zero? Why or why not?<br>
The slope of the linear model is not considered to be zero due to the following: The p-value of our linear regression analysis is 5.08 x 10-8, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?<br>
The linear model does not predict mpg of MechaCar prototypes effectively. With the intercept being statistically significant, this indicates a significant amount of variability in the dependent variable when all independent vairables are equal to zero. This also indicates that the significant features may need scaling or transforming to help improve the predictive power of the model, or there are other variables that have not been included in our model that could help explain the variability of our dependent variable.

![Liner regression screenshot](https://github.com/jmueller187/MechaCar_Statistical_Analysis/blob/main/Resources/LinearRegressionOutput.png)
