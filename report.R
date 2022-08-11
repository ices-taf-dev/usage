## Prepare plots and tables for report

## Before: tafstocks.csv (output)
## After:  assmt_proportion.png (report)

library(icesTAF)

mkdir("report")

taf.png("assmt_proportion", width=1200, height=1200)
tafstocks <- read.taf("output/tafstocks.csv")
plot(Proportion~Year, data=tafstocks, subset=Categories=="Cat 1",
     ylim=lim(tafstocks$Proportion), yaxs="i", type="l", lwd=2, col="black",
     main="TAF stock assessments")
lines(Proportion~Year, data=tafstocks, subset=Categories=="Cat 2-6",
      lwd=2, lty=2)
legend("topright", c("Cat 1","Cat 2-6"), lwd=2, lty=1:2,
       bty="n", inset=0.02, y.intersp=1.5)
dev.off()
