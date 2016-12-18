## read trmm data

library(ncdf4)

# read trmm 3b42v7 data from 2015-7-11 to 2015-7-18
ncdata_trmm1 <- nc_open("D:\\Taihubasin_FUSE\\3B42_Daily.20150711.7.nc4")
ncdata_trmm1_pre <- ncvar_get(ncdata_trmm1, 'precipitation', start = c(320, 1196), count = c(11, 14))

###################################################################
## creat list
###################################################################

trmm_data <- list(x, y)






# read trmm 3b42V7 data from 2016-9-17 to 2016-9-19
ncdata_trmm2 <- nc_open("D:\\Taihubasin_FUSE\\3B42_Daily.20160917.7.nc4")
ncdata_trmm2_pre <- ncvar_get(ncdata_trmm2, 'precipitation', start = c(320, 1196), count = c(11, 14))