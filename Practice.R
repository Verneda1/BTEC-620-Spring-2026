#Name: Verneda Ritter; Date: 02/17/2026; Purpose: Microarray Analysis Practice 


library(affy)

setwd("/Users/verneda/Downloads/GSE344_RAW (1)") 

data <- ReadAffy()

boxplot(data)

normalizeddata <-rma(data)

boxplot(exprs(normalizeddata))

Newdata <-exprs(normalizeddata)
Treatment <-Newdata[,c(1,2)]
Control <-Newdata[,c(3,4)]

Treatmentaverage <-rowMeans(Treatment)
Controlaverage <-rowMeans(Control)

foldchange <-Treatmentaverage - Controlaverage

write.csv(foldchange,"Practice.csv") 