rm(list=ls())
setwd("/Users/ta4ha/Documents/BiocomputingBiocomp-Fall2018-181102-Exercise9")

# Problem 1

# Load Packages
library('ggplot2')
library('grid')
library('gridExtra')

# Load data into variable
NBA <- read.table("NBAppgVwins.txt",header = TRUE)

# Load data into ggplot
f <- ggplot(data = NBA, aes(x = PPG, y = Wins))

# Create scatterplot with trendline
f + geom_point() + stat_smooth(method = "lm")



# Problem 2

# Load data into variable
data <- read.table("data.txt",header = TRUE, sep = ",")

# Load data into ggplot
a <- ggplot(data = data, aes(x = region, y = observations))

# Made a bar graph of the means of each region
a + geom_bar(aes(x = as.factor(region), y = observations), 
             stat = "summary", fun.y = "mean", fill = "black", 
             color = "black") + theme_classic() + xlab("region") + 
  ylab("observations")

# Made a scatterplot of the data, x-axis seperated by region
# and color coded by region
a + geom_point(aes(color = region)) + theme_classic() + 
  xlab("region") + ylab("observations") + geom_jitter()

# The bar graph of the means seems to indicate that the data from each
# region is very similar, since they all appear to have near equal
# means. However, when looking at the scatterplot of the data, it is
# clear that the regions vary significantly and only happen to have
# similar means.