dat <- read.csv("pass_and_game_data.csv", header = TRUE, row.name = 1)

russ_dat_2017 <- subset(dat, name == "Russell Wilson" & season == 2017)

russ_dat_2018 <- subset(dat, name == "Russell Wilson" & season == 2018)

summary(russ_dat_2017[, "y_coord"], na.rm = TRUE)

summary(russ_dat_2018[, "y_coord"], na.rm = TRUE)

