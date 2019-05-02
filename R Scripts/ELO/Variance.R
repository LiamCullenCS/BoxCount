library(nflscrapR)
library(tidyverse)
library(ggplot2)



TeamDistributions <- read.csv(file = "TeamDistributions.csv", header = TRUE, sep = ",")

View(TeamDistributions)

TeamDist <- as_tibble(TeamDistributions)
y <- TeamDist %>% pull(SackPCT)
x <- TeamDist %>% pull(team)

var <- paste("Variance: ", var(y))
plot(y, main = "All 32 Teams Sack Percentage", ylab = "Sack%", col = viridis(32), pch = 19, xaxt='n', xlab=var)
abline(h=mean(y), col = "green")
axis(1, at=1:32, labels=x, cex.axis=0.5)
for(i in 1:32){lines(c(i,i), c(mean(y), y[i]), col="red")}


#Can use this or built in function 'var'
variance <- function(x) sum((x - mean(x)) ^2) / (length(x) -1)

