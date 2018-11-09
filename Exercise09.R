rm(list=ls())
setwd("/Users/ta4ha/Documents/BiocomputingBiocomp-Fall2018-181102-Exercise9")

# Problem 1

# Load Packages
library('ggplot2')
library('grid')
library('gridExtra')

# Load data
NBA <- read.table("NBAppgVwins.txt",header = TRUE)

f <- ggplot(data = NBA, aes(x = PPG, y = Wins))
f + geom_point() + stat_smooth(method = "lm")

# Problem 2

data <- read.table("data.txt",header = TRUE, sep = ",")

