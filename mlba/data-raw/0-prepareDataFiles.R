library(dplyr)
library(devtools)


accidents = read.csv(file.path('data-raw', 'accidents.csv.gz'))
use_data(accidents, overwrite=TRUE)

Amtrak = read.csv(file.path('data-raw', 'Amtrak.csv.gz'))
use_data(Amtrak, overwrite=TRUE)

BostonHousing = read.csv(file.path('data-raw', 'BostonHousing.csv.gz')) %>%
  rename(CAT.MEDV = CAT..MEDV)
use_data(BostonHousing, overwrite=TRUE)

Cereals = read.csv(file.path('data-raw', 'Cereals.csv.gz'))
use_data(Cereals, overwrite=TRUE)

eBayNetwork = read.csv(file.path('data-raw', 'eBayNetwork.csv.gz'))
use_data(eBayNetwork, overwrite=TRUE)

eBayTreemap = read.csv(file.path('data-raw', 'EbayTreemap.csv.gz'))
use_data(eBayTreemap, overwrite=TRUE)

gdp = read.csv(file.path('data-raw', 'gdp.csv.gz'), skip = 4, stringsAsFactors = FALSE)
names(gdp)[5] <- "GDP2015"
use_data(gdp, overwrite=TRUE)

liftExample = read.csv(file.path('data-raw', 'liftExample.csv.gz'),stringsAsFactors = TRUE)
use_data(liftExample, overwrite=TRUE)

ownerExample = read.csv(file.path('data-raw', 'ownerExample.csv.gz'),stringsAsFactors = TRUE)
use_data(ownerExample, overwrite=TRUE)

SCstudents = read.csv(file.path('data-raw', 'SC-US-students-GPS-data-2016.csv.gz'))
use_data(SCstudents, overwrite=TRUE)

ToyotaCorolla = read.csv(file.path('data-raw', 'ToyotaCorolla.csv.gz'))
use_data(ToyotaCorolla, overwrite=TRUE)

UniversalBank = read.csv(file.path('data-raw', 'UniversalBank.csv.gz'))
use_data(UniversalBank, overwrite=TRUE) # , file=file.path('data', 'UniversalBank.rda'))

Utilities = read.csv(file.path('data-raw', 'Utilities.csv.gz'))
use_data(Utilities, overwrite=TRUE) # , file=file.path('data', 'Utilities.rda'))

Veerhoven = read.csv(file.path('data-raw', 'Veerhoven.csv.gz'))
use_data(Veerhoven, overwrite=TRUE) # , file=file.path('data', 'Veerhoven.rda'))

WestRoxbury = read.csv(file.path('data-raw', 'WestRoxbury.csv.gz'))
use_data(WestRoxbury, overwrite=TRUE) # , file=file.path('data', 'WestRoxbury.rda'))

Wine = read.csv(file.path('data-raw', 'Wine.csv.gz'))
use_data(Wine, overwrite=TRUE) # , file=file.path('data', 'Wine.rda'))

