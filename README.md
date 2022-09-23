# MechaCar_Statistical_Analysis

## Overview
A statistical analysis using R and RStudio. The MechaCar is suffering from production troubles and AutosRUs has requested a review of the production data for insights to help the manufacturing team. The following statistical analysis will be performed:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical          analysis, you’ll write a summary interpretation of the findings. *


## Linear Regression to Predict MPG 

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? The intercept, vehicle_length and the ground_clearance variables provided a non-random amount of variance to the mpg values as shown below, which can be used as variables of interest.

![Linear Model](https://user-images.githubusercontent.com/30300621/191048305-2464a71a-a7d0-4b8c-ba65-d2c59ddf63e6.PNG)

![Summary LM](https://user-images.githubusercontent.com/30300621/191048337-f4e6f19b-ee93-4528-bd38-1319b4d9e88c.PNG)


- Is the slope of the linear model considered to be zero? Why or why not? The slope of the linear model is not zero, because the p-value is at 5.35e-11, which is 5.35 x 10^11 and is smaller than the assumed significance level of 0.05%. There is sufficient evidence to reject the null hypothesis. 

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? Yes, this linear model predictws mpg of MechaCar prototypes effectively. The r-squared value of 0.7149 states that about 71% of mpg linear model predictions will perform well. 

## Create Visualizations for the Trip Analysis

### Summary Statistics on Suspension Coils

The design specification requirements for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI). A statistical summary displaying all the manufacturing lots and each lot individually shows that the current data meets the design specifications for the lots in total, but not all lots individually. 

The snippet below shows the Variance for the total summary is at 62.29356 (PSI), which is below the design specifications for the suspension coils.

![total summary del 2](https://user-images.githubusercontent.com/30300621/191853796-3a681470-06a7-42e0-b984-76b2737dab38.PNG)

The snippet below shows Lot 1 and Lot 2 also fall within the design specification requirements where Lot 1 = 0.98 (PSI), and Lot 2 = 7.47 (PSI). 
However, Lot 3 exceeds the 100 pounds PSI at 170.29 (PSI).

![LOT_summary](https://user-images.githubusercontent.com/30300621/191854113-39a4bf81-9807-421b-9dbc-a2cbda4ca59c.PNG)


### T-Tests on Suspension Coils

The following t-tests were conducted to determine if the PSI for all manufacturing lots and then individually are statistically different dfrom the population mean of 1,500 pounds PSI. 

The first t-test is for all manufacturing lots and shows the lots are not statistically different from the population mean of 1,500. The results below shows a mean of 1498.78, and a p-value of 0.06028. The p-value is higher than the 0.05 significance level and does not allow rejecting the null hypothesis. 

![t_test1](https://user-images.githubusercontent.com/30300621/191858280-5b2ac306-8f1f-43dd-aa79-eb92970b7f23.PNG)

### Lot 1 t-test
Lot 1 t-test shows the mean is exactly at 1500, which concludes no statistical difference. The p-value = 1, which indicates it is not low enough to reject the null hypothesis. 

![ttest_lot1](https://user-images.githubusercontent.com/30300621/191859074-60f83710-3180-464c-93ca-86b67807c7bd.PNG)

### Lot 2 t-test
Lot 2 t-test shows the mean is also at 1500.2, which concludes no statistical difference. The p-value = 0.6072, which indicates it is not low enough to reject the null hypothesis. 

![ttest_lot2](https://user-images.githubusercontent.com/30300621/191859106-9086f43d-e336-49ac-a4da-6bc86fe85eba.PNG)

### Lot 3 t-test
Lot 3 t-test shows the mean at 1496.14 which concludes no significant statistical difference. The p-value = 0.04168, which indicates it is low enough to reject the null hypothesis. Further evaluation may be needed for Lot 3, since it is showing significant levels from the summary statistical test and the t-test.

![ttest_lot3](https://user-images.githubusercontent.com/30300621/191859133-b02f62d9-03b1-44eb-851b-f082b69fb149.PNG)

## Study Design: MechaCar vs Competition

How does MechaCar compare to the competition? To answer this question, several items and research needs to take place. Certain metrics need to be identified to be able to check the differences. Certain metrics that matter to potential customers looking to purchase reliable transportation. Some metrics can be the of fuel, for example, city or highway fuel efficiency. Other metrics can be horse power, maintenance cost, or safety rating. 

After comparing the metrics for MechaCar and the competition, a null hypothesis will determine what areas MechaCar remains competitive against the competition. An alternative hypothesis will show what areas need improvement to fix any issues that cause MechaCar from being competitive. 

To evaluate these items in comparison to the competition, an analysis of variance (ANOVA) test. The ANOVA test can show if the mean from multiple items are siomilar or different.  The data needed to conduct the statistical tests would have to be similar to the MechaCar data to make sure the evaluation is a real comparison. 
