# Read the mobile_money_data
mobile_data <- read.csv("mobilemoney_data.csv") 

# load the package
library(tidyverse)

# Exploratory data analysis (EDA)
glimpse(mobile_data)
summary(mobile_data)


library(skimr)
skim(mobile_data)

# check out individual variables
mobile_data %>% count(account_type, sort = T)


# Replacing NA values
mobile_data <- mobile_data %>% 
  na_if("") %>% 
  na_if("-97")

# quick check functions
names(mobile_data)
head(mobile_data, 10) # first 10 observations
tail(mobile_data, 2) # last six observations
dim(mobile_data) # dimensions of the data set
ncol(mobile_data) # number of columns
nrow(mobile_data) # Number of Rows
length(mobile_data) # variables
