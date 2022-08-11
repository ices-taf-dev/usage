## Preprocess data, write TAF data tables

## Before: tafstocks.csv (bootstrap/data)
## After:  tafstocks.csv (data)

library(icesTAF)

mkdir("data")

cp("bootstrap/data/tafstocks.csv", "data/tafstocks.csv")

tafstocks <- read.taf("bootstrap/data/tafstocks.csv")
tafstocks$Proportion <- tafstocks$TAF_Stocks / tafstocks$Stocks
write.taf(tafstocks, dir="data")
