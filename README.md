# Module 15 Assignment - MechaCar Statistical Analysis
We have been asked to assist Jeremy in a review of the production data for AutoRU's MechaCar. After the car suffered from production troubles that are blocking the manufacturing team's progress, upper management asked for insights that may help alleviate the current issues. We will be reviewing mile per gallon data against a wide range of competitor products and PSI coil data from the manufacturing lots. This report concludes with the design of a statistical study which can be used to compare MechaCar against vehicles from other manufacturers

## Linear Regression to Predict MPG
Using data from 50 mpg tests performed on MechaCar prototypes, we will be reviewing the effect that certain metrics have on the mpg performance of the car. These metrics include vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. Our linear regression analysis will help determine which of the metrics are significant indicators for mpg. In particular, we answered the following questions:

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
	- Based on the results of the linear model (see the image below for the model results), there are two variables that provide a non-random amount of variance to the mpg measurement: vehicle length and ground clearance. These two coefficients have p-values that are significant to .001 (i.e. Pr(>|t|) between 0 and .001). There is some significance to the vehicle weight measurement, but this coefficient has a less significant p-value of .0776. While this is not as strong of an indicator as vehicle length and ground clearance, it is significant enough to continue using in our modeling.

- Is the slope of the linear model considered to be zero?
	- The linear model produces a p-value of 5.35e-11, which is statistically significant given a modest significance level of 0.05%. Therefore, there is sufficient evidence to reject the null hypothesis and assume that the slope of the linear model is non-zero. 

- Does this linear model predict mpg of MechaCar prototypes effectively?
	- Given the p-value discussed above and the fact that the r-squared value is .7149, we believe the model does an effective job in predicting the mpg of the MechaCar prototypes based on the variables provided. The r-squared measurement from the linear model describes what percentage of the variability of the mpg variable can be explained using the linear model. The model being able to explain over 70% of the variability in the mpg data is consistent with what we typically see with successful linear models.
	- While the p-value of the current model is significant, there are changes that can be made to better fit the model and avoid over-fitting. It would be advantageous to remove the variables that do not have predictive significance for mpg. Based on the results of the linear model, we should try removing AWD and spoiler angle.

![linear_regression_model](https://github.com/kjminges/MechaCar_Statistical_Analysis/blob/main/Resources/linear_regression_model.png)


## Summary Statistics on Suspension Coil 
Based on the design specifications for the MechaCar's suspension coils, the variance must not exceed 100 pounds per square inch. After running summary statistics for the coil tests in total, as well as broken out by each of the three manufacturing lots, the design specifications are not met for all lots. While lots 1 and 2 meet the design specifications with psi variances of 0.98 and 7.47, respectively, lot 3 does not. The psi variance of 170.29 is significantly above the maximum of 100. Despite lot 3 not meeting the manufacturing criteria, in total, the MechaCar's tests return a psi variance of 62.29. This does not exceed the maximum of 100.

![total_summary](https://github.com/kjminges/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)

![lot_summary](https://github.com/kjminges/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)


## T-Tests on Suspension Coils
In order to provide a more detailed summary of the psi test runs for the MechaCar prototypes in total and by lot, we have performed one sample t-tests. These tests are used to determine whether or not there is a statistical difference between the mean of the distributions used (the total test runs and the test runs for each of the three lots) and the hypothesized population mean of 1,500 pounds per square inch. The t-test results are provided below with brief summaries for each of the three cohorts. In total, the t-test shows a p-value of .06028. Although this is a low p-value, it's does not fall below the significance level that we have set at .05. Therefore, we do not have the sufficient evidence needed to reject the null hypothesis and we conclude that the two means are statistically similar. 

![t-test](https://github.com/kjminges/MechaCar_Statistical_Analysis/blob/main/Resources/t-test.png)

Lot 1

![t-test_lot1](https://github.com/kjminges/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_lot1.png)
- For lot 1 tests, the t-test comparing the sample means to the hypothesized mean of 1,500 psi leads to a p-value of 1. This is significantly above our significance level of .05 in a one-tailed hypothesis and therefore we conclude that the two means are statistically similar.


Lot 2

![t-test_lot2](https://github.com/kjminges/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_lot2.png)
- For lot 2 tests, the t-test comparing the sample means to the hypothesized mean of 1,500 psi leads to a p-value of 0.6072. This is comfortably above our significance level of .05 and therefore we conclude that the two means are statistically similar.

Lot 3

![t-test_lot3](https://github.com/kjminges/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_lot3.png)
- For lot 3 tests, the t-test comparing the sample means to the hypothesized mean of 1,500 psi leads to a p-value of 0.04168. This is below our significance level of .05. Therefore we have enough evidence to reject the null hypothesis and conclude that the two means are NOT statistically similar.



## Study Design: MechaCar vs Competition
The final portion of our report includes a study designed to quantify how the MechaCar performs against the competition. In particular, we are interested in how the MechaCar compares to competitive models in high-way fuel efficiency as we believe that this metric is vital for consumers and will help determine future sales. The null and alternative hypotheses for our study can be found below:

	- Null Hypothesis: There is no difference between the average high-way fuel efficiency for the MachaCar and the car's competitors.
	- Alternative Hypothesis: On average, the fuel efficiency for MechaCar performs significantly better on the high-way than their competitors.

In order to perform this study, we will need data surrounding the high-way fuel efficiency of a variety of models. First, we will need the data for the MechaCar prototypes. This will involve testing and measuring high-way fuel efficiency for the 50 different prototypes that were already included in the mpg data set. For competitor data, we will need to rely on third party data. Once both data sets are secured, we need to make sure to do a thorough review of the data, cleaning and structuring it so it is ready for our tests. Once the data is set, we will be able to perform a two-sample t-test. This test will allow us to determine if there is a statistical difference between the observed means for the MechaCar prototype data set and the competitors data set. If it is determined that there is a statistical difference between the means, then the next step would be to determine if the MechaCar's efficiency is better than that of their competitors. 
