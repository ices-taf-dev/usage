## Run analysis, write model results

## Before: tafstocks.csv (data)
## After:  tafstocks.csv (model)

library(icesTAF)

mkdir("model")

tafstocks <- read.taf("data/tafstocks.csv")
tafstocks$Proportion <- tafstocks$TAF_Stocks / tafstocks$Stocks
write.taf(tafstocks, dir="model")
