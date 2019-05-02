dat <- read.csv("pass_and_game_data.csv", header = TRUE, sep = ",", row.name = 1)

russ_dat_2017 <- subset(dat, name == "Russell Wilson" & season == 2017)

russ_dat_2018 <- subset(dat, name == "Russell Wilson" & season == 2018)

summary(russ_dat_2017[, "y_coord"], na.rm = TRUE)

summary(russ_dat_2018[, "y_coord"], na.rm = TRUE)

layout(matrix(1:2, nrow = 2))
hist(russ_dat_2017$y_coord, col = 'green', main = "Depth of target frequency '17", xlab = "Distance from LOS", ylim = c(0, 100))

hist(russ_dat_2018$y_coord, col = 'green', main = "Depth of target frequency '18", xlab = "Distance from LOS", ylim = c(0, 100))
