#Name: Verneda Ritter; Date:01/27/2026; Purpose: Microarray Analysis 

#Install Affymetrix library/Package 

if (!require("BiocManager", quietly = TRUE))
+     install.packages("BiocManager")

BiocManager::install("affy")

library(affy)

setwd("/Users/verneda/Desktop")

#Read the 4 .CEL files in R
data <- ReadAffy()

#Generate a box to visable dataset 
boxplot(data)

# Normalize the dataset to remove ant outliers and stable the median for all .CEL files 