#Deliverable 1: Linear Regression to Predict MPG

library(tidyverse)
install.packages("tidyverse")
library(dplyr)

mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =(mpg_table))

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =(mpg_table)))

#Deliverabel 2: 
suspension_coil <- read.csv(file= 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#Deliverable 3:
t.test(suspension_coil$PSI, mu=1500)

t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)

t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)

t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
