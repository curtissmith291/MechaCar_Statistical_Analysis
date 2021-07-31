# MechaCar_Statistical_Analysis
Module 15 - R

## Linear Regression to Predict MPG

Assuming a significance level of 0.05, vehicle length and ground clearance provided non-random amounts of variance to the mpg values in the dataset:

Coefficients:                   Estimate Std. Error t value Pr(>|t|)    (Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***AWD              -3.411e+00  2.535e+00  -1.346   0.1852  


The p-value (5.35e-11) is is less than the 0.05 significance level, thus we can reject the null hypothesis that the slope of the linear model is zero. 

The multiple r2 (0.7149) and adjusted r2 (0.6825) values are close enough to suggest that the model is not overfit, and that the regression model approximates the data points ~70% of the time. The prediction effectiveness cannot be determined without testing; however, if the data to be tested fall within the normal distribution of the data used to create this model, then the model will correctly predict ~70% of the time. 

## Summary Statistics on Suspension Coils

The design specifications 





## T-Tests on Suspension Coils - Summary of Findings

### All Lots vs. Population Mean:

The p-value was 0.06028, thus, the null hypothesis that there is no significant difference between the sample mean and population mean cannot be rejected, assuming a significance level of 0.05. This suggests that there is no difference between the sample mean of all Lots and the population mean. 

	One Sample t-testdata:  suspension_coil$PSIt = -1.8931, df = 149, p-value = 0.06028alternative hypothesis: true mean is not equal to 150095 percent confidence interval: 1497.507 1500.053sample estimates:mean of x   1498.78 


### Lot 1 vs. the Population Mean

The p-value was 1, thus, the null hypothesis that there is no significant difference between the sample mean and population mean cannot be rejected, assuming a significance level of 0.05. This suggests that there is no difference between the sample mean of Lot 1 and the population mean. 

	One Sample t-testdata:  lot1$PSIt = 0, df = 49, p-value = 1alternative hypothesis: true mean is not equal to 150095 percent confidence interval: 1499.719 1500.281sample estimates:mean of x      1500 


### Lot 2 vs. the Population Mean

The p-value was 0.6072, thus, the null hypothesis that there is no significant difference between the sample mean and population mean cannot be rejected, assuming a significance level of 0.05. This suggests that there is no difference between the sample mean of Lot 2 and the population mean. 

	One Sample t-testdata:  lot2$PSIt = 0.51745, df = 49, p-value = 0.6072alternative hypothesis: true mean is not equal to 150095 percent confidence interval: 1499.423 1500.977sample estimates:mean of x    1500.2 


### Lot 3 vs. the Population Mean
  
The p-value was 0.04168, thus, the null hypothesis that there is no significant difference between the sample mean and population mean can be rejected, assuming a significance level of 0.05. This suggests that there is a difference between the sample mean of Lot 3 and the population mean. 

	One Sample t-testdata:  lot3$PSIt = -2.0916, df = 49, p-value = 0.04168alternative hypothesis: true mean is not equal to 150095 percent confidence interval: 1492.431 1499.849sample estimates:mean of x   1496.14 


## Study Design: MechaCar vs Competition

A study to determine the differences in MPG for different vehicles of the same class for the competition would require: the vehicle class, average MPG ratings, and count of data points used to calculate the MPG rating. 

You could use the t-test to determine if there was a difference between the MPG means. 

Null Hypothesis: There is no significant difference in the mean MPG for vehicles of the same class. 

Alternative Hypothesis: There is a significant difference between the mean MPG for vehicles of the same class. 

