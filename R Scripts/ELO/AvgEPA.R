library(nflscrapR)
library(tidyverse)

EPA <- 0
team <- nflteams$abbr[nflteams$abbr != 'SD' 
			& nflteams$abbr != 'STL' 
			& nflteams$abbr != 'JAC']

EPAperPlay <- data.frame(team, EPA)

pbpDat <- read.csv(file = "2018 Play by Play.csv", header = TRUE, sep = ",")

for (i in 1:32){

	getEpa <- pbpDat$EPA[pbpDat$posteam == team[i]]
	EPAperPlay$EPA[EPAperPlay$team == team[i]] <- mean(getEpa, na.rm = TRUE)	
}

write.csv(EPAperPlay, "Average EPA per Play 2018.csv")

View(EPAperPlay)


sortEPA <- EPAperPlay[order(EPAperPlay$EPA),]
dotchart(sortEPA$EPA, labels = sortEPA$team, main = "2018 Avg EPA/Play", xlab ="Avg EPA Per Play", pch = 19, col= viridis(32))
