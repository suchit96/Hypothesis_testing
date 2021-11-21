# -*- coding: utf-8 -*-
"""
Created on Sat Jun 27 23:58:20 2020

@author: Wellson
"""

import pandas as pd
import scipy
from scipy from stats
import statsmodels.api as sm

labTAT=pd.read_csv("C:/Users/Wellson/Documents/R/360/Hypothesis testing/LabTAT.csv")
labTAT

labTAT.columns="lab1","lab2","lab3","lab4"

lab=labTAT.iloc[0:120,0:4]

print(stats.shapiro(lab.lab1))

print(stats.shapiro(lab.lab2))

print(stats.shapiro(lab.lab3))

print(stats.shapiro(lab.lab4))

scipy.stats.levene(lab.lab1,lab.lab2)

scipy.stats.levene(lab.lab3,lab.lab4)

scipy.stats.ttest_ind(lab.lab1,lab.lab2)

scipy.stats.ttest_ind(lab.lab3,lab.lab4)
