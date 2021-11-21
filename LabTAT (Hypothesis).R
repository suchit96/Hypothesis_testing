#     Hypothesis testing

#     Load a dataset

library(readxl)

#     2 Sample T - test

LabTAT <- read.csv(choose.files())
attach(LabTAT)
colnames(LabTAT)<-c('Lab1','Lab2','Lab3','Lab4')


#    Changing column name

View(LabTAT)
attach(LabTAT)


#     NOrmality test

shapiro.test(LabTAT$Lab1)

# shapiro test......p-value=0.5508 > alpha(0.05)

shapiro.test(LabTAT$Lab2)

# shapiro test.......p-value=0.8637 > alpha(0.05)

shapiro.test(LabTAT$Lab3)

# shapiro test.......p-value=0.4205 > alpha(0.05)

shapiro.test(LabTAT$Lab4)

# shapiro test.......p-value=0.6619 > alpha(0.05)

###########   Variance test ###################

var.test(Lab1,Lab2)

#   Variance test(Lab2&Lab2)......P-value=0.1675 > alpha(0.05)

var.test(Lab3,Lab4)

#   Variance test(Lab3 & Lab4)......P-value=0.3168 > alpha(0.05)

