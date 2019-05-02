	
Week = c("1", "2", "3", "4", "5", "6", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18")
PassYards = c(298, 226, 192, 172, 198, 222, 248, 235, 176, 225, 339, 185, 72, 237, 271, 152, 233)

max_num <- max(PassYards)

brk <- c(50, 100, 150, 200, 250, 300, 350)

hist(PassYards, col = heat.colors(length(brk)), breaks = brk, xlim = c(0, max_num), right = F, main = "Probability Density of Wilson Passing Performances", las = 1, cex.axis = 0.8, freq = F)