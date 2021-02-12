library(dplyr)

# DELIVERABLE 1

#read the mechacar mpg csv
mecha_car <- read.csv('MechaCar_mpg.csv')


# perform a linear regression on all variables (mpg as the dependent)
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
             data=mecha_car)

summary(mpg_lm)

#DELIVERABLE 2

#read the suspension coils csv into a dataframe
susp_coil <- read.csv('Suspension_Coil.csv')


#summarize all data regardless of lot
total_summary <- susp_coil %>% summarize(Mean = mean(PSI), Median = median(PSI),
                                         Variance = var(PSI), SD = sd(PSI))
#summarize data by lot
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),
                                                                       Variance = var(PSI), SD = sd(PSI))

#DELIVERABLE 3

#t-test for all lots
t.test(susp_coil$PSI, mu=1500)

#t-test for lot 1
t.test(subset(susp_coil$PSI, susp_coil$Manufacturing_Lot=='Lot1'), mu=1500)

#t-test for lot 2
t.test(subset(susp_coil$PSI, susp_coil$Manufacturing_Lot=='Lot2'), mu=1500)

#t-test for lot 3
t.test(subset(susp_coil$PSI, susp_coil$Manufacturing_Lot=='Lot3'), mu=1500)


