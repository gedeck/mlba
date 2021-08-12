library(dplyr)
library(devtools)


accidents = read.csv(file.path('data-raw', 'accidents.csv.gz'))
use_data(accidents, overwrite=TRUE) #, file=file.path('data', 'accidents.rda'))

Amtrak = read.csv(file.path('data-raw', 'Amtrak.csv.gz'))
use_data(Amtrak, overwrite=TRUE) #, file=file.path('data', 'Amtrak.rda'))

BostonHousing = read.csv(file.path('data-raw', 'BostonHousing.csv.gz')) %>%
  rename(CAT.MEDV = CAT..MEDV)
use_data(BostonHousing, overwrite=TRUE) # , file=file.path('data', 'BostonHousing.rda'))

eBayNetwork = read.csv(file.path('data-raw', 'eBayNetwork.csv.gz'))
use_data(eBayNetwork, overwrite=TRUE) # , file=file.path('data', 'eBayNetwork.rda'))

eBayTreemap = read.csv(file.path('data-raw', 'EbayTreemap.csv.gz'))
use_data(eBayTreemap, overwrite=TRUE) # , file=file.path('data', 'eBayTreemap.rda'))

gdp = read.csv(file.path('data-raw', 'gdp.csv.gz'), skip = 4, stringsAsFactors = FALSE)
names(gdp)[5] <- "GDP2015"
use_data(gdp, overwrite=TRUE) # , file=file.path('data', 'gdp.rda'))

SCstudents = read.csv(file.path('data-raw', 'SC-US-students-GPS-data-2016.csv.gz'))
use_data(SCstudents, overwrite=TRUE) # , file=file.path('data', 'SCstudents.rda'))

Utilities = read.csv(file.path('data-raw', 'Utilities.csv.gz'))
use_data(Utilities, overwrite=TRUE) # , file=file.path('data', 'Utilities.rda'))

Veerhoven = read.csv(file.path('data-raw', 'Veerhoven.csv.gz'))
use_data(Veerhoven, overwrite=TRUE) # , file=file.path('data', 'Veerhoven.rda'))

WestRoxbury = read.csv(file.path('data-raw', 'WestRoxbury.csv.gz'))
use_data(WestRoxbury, overwrite=TRUE) # , file=file.path('data', 'WestRoxbury.rda'))
