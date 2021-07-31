library(dplyr)
library(ggplot2)

# opening file
mechaCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# simple linear model
lm(formula = mpg ~ vehicle_length, data = mechaCar_mpg)
lm(mpg ~ vehicle_length, mechaCar_mpg)

# lm summary
summary(lm(mpg ~ vehicle_length, mechaCar_mpg))

# scatter plot with regression line
model <- lm(mpg ~ vehicle_length, mechaCar_mpg)
yvals <- model$coefficients['vehicle_length']*mechaCar_mpg$vehicle_length +
  model$coefficients['(Intercept)']

plt <- ggplot(mechaCar_mpg, aes(x=vehicle_length,y=mpg))
plt + geom_point() + geom_line(aes(y=yvals), color = "red")

# multiple linear regression
lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +
     AWD, mechaCar_mpg)

summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, mechaCar_mpg))

suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
summary_table <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), Count=n(), .groups='keep')

# t.test all lots vs. population mean of 1500
t.test(suspension_coil$PSI, mu=1500)

lot1 = suspension_coil %>% filter(Manufacturing_Lot=="Lot1")
lot2 = suspension_coil %>% filter(Manufacturing_Lot=="Lot2")
lot3 = suspension_coil %>% filter(Manufacturing_Lot=="Lot3")

# testing each lot vs. population mean of 1500
t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)
