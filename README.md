# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

![linear model](https://github.com/juberr/MechaCar_Statistical_Analysis/blob/main/Pics/linear%20model.png?raw=true)

Vehicle length and ground clearance provide a non-random amount of variance to the MPG values in the data set.

The slope of the linear model cannot be considered zero. This linear model has an r-squared value of 0.71 that is statistically significant (p=5.35e-11). Since the r-squared value is positive, it will be a line slanting upwards, rather than parallel with the x-axis.

This linear model provides a strong prediction of MPG in MechaCar prototypes because it has an r-squared value of 0.71. This means that 71% of the variance seen in the data is explained by our model. To improve it further, it is recommended that extraneous variables found not to be significantly impacting the results (like weight, spoiler angle, and AWD) be removed to avoid over-fitting the model to this specific data set.

## Summary Statistics on Suspension Coils

![all lots summary](https://github.com/juberr/MechaCar_Statistical_Analysis/blob/main/Pics/all%20lots%20summary.png?raw=true)

Above is the mean, median, total variance, and standard deviation for all suspension coils across manufacturing lots.

![each lot summary](https://github.com/juberr/MechaCar_Statistical_Analysis/blob/main/Pics/each%20lot%20summary.png?raw=true)

Above is the previous table, except grouped by manufacturing lot.

The variance across all three manufacturing lots is at an acceptable amount of about 62.3 PSI, though it is coming close to the limit of 100 PSI.

For individual lots, lot 3 exceeds the variance limit at about 170.3 PSI, this is concerning as it is clearly an outlier among lots 1 and 2 which are at about 1 and 7.5 respectively. An investigation into the manufacturing practices of lot 3 is imperative!

## T-Tests on Suspension Coils

![t-test lot 3](https://github.com/juberr/MechaCar_Statistical_Analysis/blob/main/Pics/lot3%20ttest.png?raw=true)

Assuming a normal significance level with a p-value of 0.05, Lot 3 has a different mean than the population's that is statistically significant. We can reject the null hypothesis. From our t-test we found a p-value of 0.04 for Lot 3, and a mean of 1496.14. This follows the high variance we saw in deliverable 2, as a high variance will have an affect on the mean.

![t-test lot 1](https://github.com/juberr/MechaCar_Statistical_Analysis/blob/main/Pics/lot1%20ttest.png?raw=true)

![t-test lot 2](https://github.com/juberr/MechaCar_Statistical_Analysis/blob/main/Pics/lot2%20ttest.png?raw=true)

![t-test all](https://github.com/juberr/MechaCar_Statistical_Analysis/blob/main/Pics/t-test%20all.png?raw=true)

t-tests for the other samples (Lots 1 and 2, and total sample), do not have a different mean that is significantly significant from the population's.

## Study Design: MechaCar vs Competition

To quantify how the MechaCar performs against the competition, function should come before style. For this reason, this study should consider the key metrics of maintenance cost, and safety rating. While keeping these metrics in mind when designing the MechaCar, AutosRUs will ensure that customers get the maximum value out of their purchases, and feel safe behind the wheel.

### Hypotheses

Maintenance cost should be tested via an average maintenance cost per year. This should be tested using a t-test where the sample is the MechaCar, and the population is the competition. A t-Test is appropriate because it is used to determine if there is a statistically significant difference between two groups. To test this, the following hypotheses would be created:

* `Ho` : The MechaCar costs no different on average per year to maintain functionality
* `Ha` : The MechaCar costs less than average per year to maintain functionality

To acquire data, this study needs access to average maintenance costs overtime for cars considered competition to the MechaCar, and the maintenance cost for the MechaCar itself.

Safety ratings can be tested using an ANOVA test. In this ANOVA test, the categorical variable would be the brand of car (e.g. Toyota, Kia) and would be tested against their mean safety rating as the continuous variable. This test would demonstrate if there is a difference in safety rating between MechaCars and other brands of cars. The following hypotheses would tested:

* `Ho` : There is no statistically significant difference between safety rating and brand of car.
* `Ha` : The MechaCar has a higher average safety rating.

The data for this test can be acquired through finding the independent safety ratings for the cars of the competition and then aggregating them by brand.
