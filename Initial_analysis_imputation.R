#libraries 
library(dplyr)
library(mice)
library(foreign)
library(tidyverse)
library(VIM)
library(scales)
library(ggrepel)
library(tidytext)
# data  
data = read.arff("bone_marrow.arff")
#get rid of features that aren't relevant in my opinion (this one had a bunch of weird values)
data = data %>% select(-time_to_aGvHD_III_IV)
#checking for NAs in data and outliers
summary(data)
#checking the datatypes of the predictors  
glimpse(data)
#taking care of repeated numbers 
data$PLTrecovery = ifelse(data$PLTrecovery == 1000000 , NA, data$PLTrecovery)
data$ANCrecovery = ifelse(data$ANCrecovery == 1000000, NA , data$ANCrecovery)
#taking care of other outliers
data$Rbodymass = ifelse(data$Rbodymass == 103.40 , NA , data$Rbodymass)
# view missing data patterns
md.pattern(data)
#better view of missing data 
aggr_plot = aggr(data, col=c("navyblue ", "red"), 
                 numbers = TRUE, 
                 sortVars = TRUE,
                 labels = names(data),
                 cex.axis = .7,
                 gap = 3, 
                 ylab = c("Histogram of Missing data", "Pattern"))

#fill in missing data using mice 
imputed_data = mice(data = data, m = 100 , method = 'rf')
#checking for convergence and no trends
plot(imputed_data)
#blue dots real data red dot imputed 
stripplot(imputed_data)
#looking at methods used 
summary(imputed_data)
# finish up. 
complete_data = complete(imputed_data,1)

# checking for missing values 
sapply(complete_data , function(x) sum(is.na(x)))

#good to go!!












