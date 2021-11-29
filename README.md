# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

 ![linear_reg](/images/linear_reg.PNG)

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

According to the data, the length of the vehicle, its ground clearance and intercept are statistically
unlikely to randomly affect the linear model, meaning that they have a significant corelation to
impact on MPG.

* Is the slope of the linear model considered to be zero? Why or why not?

No, the slope is not considered zero because there is a significant relationship between both vehicle
length and ground clearance, two independent variables, and the dependent variable of MPG.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

According to the multiple r-sqaured value of 0.7149, this model has a predictive effectiveness
of 71%. There are obviously more factors not present in the dataset that can improve the model.

## Summary Statistics on Suspension Coils

* The design specifications for the MechaCar suspension coils dicatate that the variance of the 
suspension coils must not exceed 100 PSI. Does the data meet this design specification for all
manufacturing lots in total and each lot individually?

![total_summary](/images/total_summary.PNG)

Looking at the lots as one set of data you can see that the variance is 62 PSI, which is within
the tolerance specifications. 

![lot_summary](/images/lot_summary.PNG)

However, that is not the full picture. As seen above in the lot summary, lots 1 and 2 are well
within tolerance at 1 and 7 PSI respectfully. Lot 3 on the other hand is at a variation of 
171 PSI, almost double the tolerance specification.