## Prepare plots and tables for report

library(icesTAF)
library(cat3advice)

mkdir("report")

#load model outputs

load("./output/her6aS7bc_chr.RData")


# save the advice summary data to a file
sink('./report/advice_summary.txt')
advice(advice)
sink()

sink('./report/indicator.csv')
indicator(f)
sink()

# Save the plots
jpeg(file="./report/biomass_index.jpeg")
plot(advice@b)
dev.off()

jpeg(file="./report/Fproxymsy_LBI_HR.jpeg")
plot(advice@F)
dev.off()

jpeg(file="./report/harvest_rate.jpeg")
plot(hr)
dev.off()

jpeg(file="./report/inverse_fishing_pressure_proxy.jpeg")
plot(f, inverse = TRUE)
dev.off()

jpeg(file="./report/Lmean_byYear.jpeg")
plot(lmean)
dev.off()




