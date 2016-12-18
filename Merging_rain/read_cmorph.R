###################################################################
## read cmorph data

library(ncdf4)
library(matlab)
library(sp)

# read coordinates from csv

grid_data_coord <- read.csv("F:\\vs2015worksapce\\Merging_rain\\coord.csv")
coordinates(grid_data_coord) <- cbind(grid_data_coord$lon, grid_data_coord$lat)
grid_data_coord <- grid_data_coord[, 1]
###################################################################


# read cmorph data from 2015-7-11 to 2015-7-18
ncdata_cmorph1 <- nc_open("D:\\Taihubasin_FUSE\\CMORPH_V0.x_0.25deg-3HLY_20150711.nc")
ncdata_cmorph1_pre <- ncvar_get(ncdata_cmorph1, 'cmorph_precip', start = c(475, 359, 1), count = c(14, 11, 8))

ncdata_cmorph1_pre <- 3 * (ncdata_cmorph1_pre[,, 1] + ncdata_cmorph1_pre[,, 2] + ncdata_cmorph1_pre[,, 3] + ncdata_cmorph1_pre[,, 4] + ncdata_cmorph1_pre[,, 5] + ncdata_cmorph1_pre[,, 6] + ncdata_cmorph1_pre[,, 7] + ncdata_cmorph1_pre[,, 8])

ncdata_cmorph1_pre <- rot90(ncdata_cmorph1_pre)
dim(ncdata_cmorph1_pre) <- c(1, 11 * 14)
###################################################################
## creat list
###################################################################
cmorph_data <- list()
cmorph_data$ts <- ncdata_cmorph1_pre
cmorph_data$pixels <- grid_data_coord

# read cmorph data from 2016-9-17 to 2016-9-19
ncdata_cmorph2 <- nc_open("D:\\Taihubasin_FUSE\\CMORPH_V0.x_0.25deg-3HLY_20160917.nc")
ncdata_cmorph2_pre <- ncvar_get(ncdata_cmorph2, 'cmorph_precip', start = c(475, 359, 1), count = c(14, 11, 8))

ncdata_cmorph2_pre <- 3 * (ncdata_cmorph2_pre[,, 1] + ncdata_cmorph2_pre[,, 2] + ncdata_cmorph2_pre[,, 3] + ncdata_cmorph2_pre[,, 4] + ncdata_cmorph2_pre[,, 5] + ncdata_cmorph2_pre[,, 6] + ncdata_cmorph2_pre[,, 7] + ncdata_cmorph2_pre[,, 8])

ncdata_cmorph2_pre <- rot90(ncdata_cmorph2_pre)