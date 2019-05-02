library(nflscrapR)
library(tidyverse)
library(ggplot2)

TeamDistributions <- read.csv(file = "TeamDistributions.csv", header = TRUE, sep = ",")
rankings <- read.csv(file = "ELO Rankings.csv", header = TRUE, sep = ",")

View(TeamDistributions)

TeamDist <- as_tibble(TeamDistributions)
Sacks <- TeamDist %>% pull(SackPCT)
Pass <- TeamDist %>% pull(PassPCT)
Run <- TeamDist %>% pull(RunPCT)

SackDiff <- TeamDist %>% pull(SackDiff)

ratings <- rankings %>% pull(rating)
wins <- rankings %>% pull(wins)
losses <- rankings %>% pull(losses)

cor(Sacks, ratings)
cor(Pass, ratings)
cor(Run, ratings)
cor(Sacks, wins)