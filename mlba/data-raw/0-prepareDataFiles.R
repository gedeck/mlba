library(dplyr)
library(devtools)


accidents = read.csv(file.path('data-raw', 'accidents.csv.gz'))
use_data(accidents, overwrite=TRUE) #, file=file.path('data', 'accidents.rda'))

BostonHousing = read.csv(file.path('data-raw', 'BostonHousing.csv.gz'))
use_data(BostonHousing, overwrite=TRUE) # , file=file.path('data', 'BostonHousing.rda'))

WestRoxbury = read.csv(file.path('data-raw', 'WestRoxbury.csv.gz'))
use_data(WestRoxbury, overwrite=TRUE) # , file=file.path('data', 'WestRoxbury.rda'))
