library(dplyr)
library(jsonlite)
library(tidyverse)

# Deliverable 1
mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)
head(mpg)
summary(mpg)

model <- lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, mpg)
summary(model)

# Deliverable 2
coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)
head(coil)
summary(coil)

total_summary <- coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 3
t.test(coil$PSI, mu=1500)
t.test(subset(coil$PSI, coil$Manufacturing_Lot=="Lot1"), mu=1500)
t.test(subset(coil$PSI, coil$Manufacturing_Lot=="Lot2"), mu=1500)
t.test(subset(coil$PSI, coil$Manufacturing_Lot=="Lot3"), mu=1500)

