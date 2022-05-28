setwd("/cloud/project/Machine Learning A-Z (Codes and Datasets)/Part 1 - Data Preprocessing/Section 2 -------------------- Part 1 - Data Preprocessing --------------------/R")
# Data Preprocessing
library (readr)

urlfile="https://raw.githubusercontent.com/dhisomu/PSG_PGCert_21/main/Data.csv"

dataset <- as.data.frame(read_csv(url(urlfile)))
#rm(dataset)
# Importing the dataset
#dataset = read.csv('Data.csv')



# Taking care of missing data #is.na = True or false
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Age)
dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
                        dataset$Salary)