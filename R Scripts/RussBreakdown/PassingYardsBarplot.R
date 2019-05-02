	
Week = c("1", "2", "3", "4", "5", "6", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18")
PassYards = c(298, 226, 192, 172, 198, 222, 248, 235, 176, 225, 339, 185, 72, 237, 271, 152, 233)

library(teamcolors)

nfl_teamcolors <- teamcolors %>% filter(league == "nfl")
sea_color <- nfl_teamcolors %>% 
	filter(name == "Seattle Seahawks") %>%
	pull(secondary)

barplot(PassYards, main = "Russell Wilson Passing Yards Per Game", xlab = "Week", ylab = "Passing Yards", col = sea_color, ylim = c(0,350), names.arg = Week, cex.names=.6)