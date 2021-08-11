library(dplyr)
library(devtools)


accidents = read.csv(file.path('data-raw', 'accidents.csv'))
use_data(accidents, overwrite=TRUE) #, file=file.path('data', 'accidents.rda'))

WestRoxbury = read.csv(file.path('data-raw', 'WestRoxbury.csv'))
use_data(WestRoxbury, overwrite=TRUE) # , file=file.path('data', 'WestRoxbury.rda'))
