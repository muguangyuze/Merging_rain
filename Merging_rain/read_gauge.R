## read gauge rain data

library(sp)


gauge_data_start <- read.csv("F:\\vs2015worksapce\\Merging_rain\\taihu_weather_gauge.csv")

# read 2015-7-11

data_canhong <- gauge_data_start[, 4]
data_canhong <-array(t(data_canhong),c(1,17))
data_coord <- gauge_data_start[, 1:3]

coordinates(data_coord) <- cbind(data_coord$longitude, data_coord$latitude)
data_coord <- data_coord[, 1]

canhong_gauge <- list()
canhong_gauge$ts <- data_canhong
canhong_gauge$points <- data_coord

# read 2016-9-17

data_molandi <- gauge_data_start[, 5]
data_molandi <- array(t(data_molandi), c(1, 17))

molandi_gauge <- list()
molandi_gauge$ts <- data_molandi
molandi_gauge$points <- data_coord