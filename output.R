## Extract results of interest, write TAF output tables

## Before: tafstocks.csv (model)
## After:  tafstocks.csv (output)

library(icesTAF)

mkdir("output")

tafstocks <- read.taf("model/tafstocks.csv")
names(tafstocks)[names(tafstocks)=="year"] <- "Year"
write.taf(tafstocks, dir="output")
