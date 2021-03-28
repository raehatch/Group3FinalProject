## Author: Sean Morris
## Date: March 27, 2021

## The file I opened for the data is available from the NOAA website: https://psl.noaa.gov/data/gridded/data.gpcc.html
## The specific file I downloaded was the Total Full V7 (1.0x1.0): ftp://ftp.cdc.noaa.gov/Datasets/gpcc/full_v7/precip.mon.total.1x1.v7.nc
## Downloading the file requires using Firefox, as it uses ftp transfer to download. Most browsers don't support that download transfer type.
## Once downloaded, move it to your working directory and rename it to something convenient, then replace the name in the code below to open.
## The rest of the code below was following the tutorial available here: https://rpubs.com/boyerag/297592
## I'm not sure how to access the core data available in the file beyond the point below, but following the tutorial should allow access.

install.packages("ncdf4")
library(ncdf4)

weather <- nc_open("test.nc")
weather

lon <- ncvar_get(weather, "lon")
lat <- ncvar_get(weather, "lat", verbose = F)
t <- ncvar_get(weather, "time")

testArray <- ncvar_get(weather, "precip")
testArray
dim(testArray)
