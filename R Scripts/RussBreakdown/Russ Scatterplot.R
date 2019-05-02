dat <- read.csv("pass_and_game_data.csv", header = TRUE, row.name = 1)

russ_dat <- subset(dat, name == "Russell Wilson" & season == 2018)

x <- russ_dat$x_coord
y <- russ_dat$y_coord

russ_dat$Color[russ_dat$pass_type == "COMPLETE"] = rgb(0, 100, 0, 50, maxColorValue = 100)
russ_dat$Color[russ_dat$pass_type == "INTERCEPTION"] = rgb(255, 0, 0, 200, maxColorValue = 255) 
russ_dat$Color[russ_dat$pass_type == "TOUCHDOWN"] = rgb(0, 191, 255, 200, maxColorValue = 255)
russ_dat$Color[russ_dat$pass_type == "INCOMPLETE"] = rgb(0, 0, 0, 75, maxColorValue = 100)

plot(x, y, col=russ_dat$Color, pch = 16, main = "Russell Wilson Pass Locations 2018")


table(russ_dat[, "pass_type"])

mean(russ_dat[, "y_coord"], na.rm = TRUE)

median(russ_dat[, "y_coord"], na.rm = TRUE)

range(russ_dat[, "y_coord"], na.rm = TRUE)

summary(russ_dat[, "y_coord"], na.rm = TRUE)

