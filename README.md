# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

 ![linear_reg](/images/linear_reg.PNG)

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

According to the data, the length of the vehicle, its ground clearance and intercept are statistically
unlikely to randomly affect the linear model, meaning that they have a significant correlation to
impact on MPG.

* Is the slope of the linear model considered to be zero? Why or why not?

No, the slope is not considered zero because there is a significant relationship between both vehicle
length and ground clearance, two independent variables, and the dependent variable of MPG.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

According to the multiple r-squared value of 0.7149, this model has a predictive effectiveness
of 71%. There are obviously more factors not present in the dataset that can improve the model.

## Summary Statistics on Suspension Coils

* The design specifications for the MechaCar suspension coils dictate that the variance of the 
suspension coils must not exceed 100 PSI. Does the data meet this design specification for all
manufacturing lots in total and each lot individually?

![total_summary](/images/total_summary.PNG)

Looking at the lots as one set of data you can see that the variance is 62 PSI, which is within
the tolerance specifications. 

![lot_summary](/images/lot_summary.PNG)

However, that is not the full picture. As seen above in the lot summary, lots 1 and 2 are well
within tolerance at 1 and 7 PSI respectfully. Lot 3 on the other hand is at a variation of 
171 PSI, almost double the tolerance specification.

## T-Tests on Suspension Coils

A series of t-tests were performed to determine if the group total of manufacturing lots, as well 
as each lot individually were statistically different from the population mean of 1,500 PSI. 
The accepted P-value for the tests is 0.05.

The NULL Hypothesis:
    * There is no significant difference between the mean PSI of all manufacturing lots and
    individual lots, and the population mean of 1,500 PSI.

The Alternate Hypothesis:
    * These is significant difference between the mean PSI of all manufacturing lots and
    individual lots, and the population mean of 1,500 PSI.

![total_t_test](/images/total_t_test.PNG)

In the t-test performed on the total lots, we find a p-value of 0.06. This is higher than
our accepted value of 0.05, so we must reject the NULL hypothesis for total lots.

![lot1_t_test](/images/lot1_t_test.PNG)
* Lot 1 p-value = 1

![lot2_t_test](/images/lot2_t_test.PNG)
* Lot 2 p-value = 0.06

![lot3_t_test](/images/lot3_t_test.PNG)
* Lot 3 p-value = 0.04

The t-tests performed on lots 1 and 2 were both higher than our accepted p-value, which means we
must reject the NULL hypothesis on those tests. The p-value for lot 3 was under our accepted
p-value, meaning that we accept the NULL hypothesis in this case.

## Study Design: MechaCar vs Competition

As any company that is always looking forward, MechaCar needs to run hard analytics against its
competition to figure out how to deliver the best vehicle to its customers. In order to do this,
a clear and concise statistical study must be designed and performed.

In this study we need to limit ourselves to specific metrics. We've specified three to analyze:

1. Safety Rating
2. Price
3. Horsepower

To keep the data controlled, we'll only be looking at Sedans made by MechaCar and its competitors.

The Null Hypothesis is: There is no statistically significant difference on the defined metrics 
between MechaCar and its competitors.

The Alternative Hypothesis is: There is statistically significant difference on the defined metrics 
between MechCar and its competitors.

The accepted p-value for the study is 0.05.

To run the analysis, we'll need to collect data for each of our three metrics from all MechaCar
competitors in the Sedan vehicle class. We will group the data for all competitors together.
Then we will need to perform t-tests on each metric for MechaCar's Sedans against the same metric
for the competitor data. If the p-value for each test is under 0.05 we will reject the NULL hypothesis,
and present it as statistically significant data to MechaCar.