library(dplyr)
library(devtools)


accidents = read.csv(file.path('data-raw', 'accidents.csv.gz'))
use_data(accidents, overwrite=TRUE)

accidentsFull = read.csv(file.path('data-raw', 'accidentsFull.csv.gz'))
use_data(accidentsFull, overwrite=TRUE)

accidentsnn = read.csv(file.path('data-raw', 'accidentsnn.csv.gz'))
use_data(accidentsnn, overwrite=TRUE)

Amtrak = read.csv(file.path('data-raw', 'Amtrak.csv.gz'))
use_data(Amtrak, overwrite=TRUE)

Airfares = read.csv(file.path('data-raw', 'Airfares.csv.gz'))
use_data(Airfares, overwrite=TRUE)

ApplianceShipments = read.csv(file.path('data-raw', 'ApplianceShipments.csv.gz'))
use_data(ApplianceShipments, overwrite=TRUE)

file.copy(from=file.path('data-raw', 'AutoAndElectronics.zip'),
          to=file.path('inst', 'extdata', 'AutoAndElectronics.zip'),
          overwrite=TRUE, copy.mode=TRUE)

banks = read.csv(file.path('data-raw', 'banks.csv.gz'))
use_data(banks, overwrite=TRUE)

BostonHousing = read.csv(file.path('data-raw', 'BostonHousing.csv.gz')) %>%
  rename(CAT.MEDV=CAT..MEDV)
use_data(BostonHousing, overwrite=TRUE)

Cereals = read.csv(file.path('data-raw', 'Cereals.csv.gz'))
use_data(Cereals, overwrite=TRUE)

CharlesBookClub = read.csv(file.path('data-raw', 'CharlesBookClub.csv.gz'))
use_data(CharlesBookClub, overwrite=TRUE)

drug = read.csv(file.path('data-raw', 'drug.csv.gz'))
use_data(drug, overwrite=TRUE)

EastWestAirlinesNN = read.csv(file.path('data-raw', 'EastWestAirlinesNN.csv.gz'))
use_data(EastWestAirlinesNN, overwrite=TRUE)

eBayAuctions = read.csv(file.path('data-raw', 'eBayAuctions.csv.gz'))
use_data(eBayAuctions, overwrite=TRUE)

eBayNetwork = read.csv(file.path('data-raw', 'eBayNetwork.csv.gz'))
use_data(eBayNetwork, overwrite=TRUE)

eBayTreemap = read.csv(file.path('data-raw', 'EbayTreemap.csv.gz'))
use_data(eBayTreemap, overwrite=TRUE)

Faceplate = read.csv(file.path('data-raw', 'Faceplate.csv.gz'))
use_data(Faceplate, overwrite=TRUE)

FlightDelays = read.csv(file.path('data-raw', 'FlightDelays.csv.gz'), stringsAsFactors = TRUE)
use_data(FlightDelays, overwrite=TRUE)

gdp = read.csv(file.path('data-raw', 'gdp.csv.gz'), skip = 4, stringsAsFactors = FALSE)
names(gdp)[5] <- "GDP2015"
use_data(gdp, overwrite=TRUE)

LaptopSalesJanuary2008 = read.csv(file.path('data-raw', 'LaptopSalesJanuary2008.csv.gz'), stringsAsFactors = FALSE)
use_data(LaptopSalesJanuary2008, overwrite=TRUE)

liftExample = read.csv(file.path('data-raw', 'liftExample.csv.gz'), stringsAsFactors = TRUE)
use_data(liftExample, overwrite=TRUE)

NYPDMotorVehicleCollisions = read.csv(file.path('data-raw', 'NYPD_Motor_Vehicle_Collisions_1000.csv.gz'))
NYPDMotorVehicleCollisions = NYPDMotorVehicleCollisions[order(as.Date(NYPDMotorVehicleCollisions$DATE, format = "%m/%d/%Y")),]
use_data(NYPDMotorVehicleCollisions, overwrite=TRUE)

ownerExample = read.csv(file.path('data-raw', 'ownerExample.csv.gz'),stringsAsFactors = TRUE)
use_data(ownerExample, overwrite=TRUE)

RidingMowers = read.csv(file.path('data-raw', 'RidingMowers.csv.gz'))
use_data(RidingMowers, overwrite=TRUE)

SCstudents = read.csv(file.path('data-raw', 'SC-US-students-GPS-data-2016.csv.gz'))
use_data(SCstudents, overwrite=TRUE)

SP500 = read.csv(file.path('data-raw', 'SP500.csv.gz'))
use_data(SP500, overwrite=TRUE)

spambase = read.csv(file.path('data-raw', 'spambase.csv.gz'))
use_data(spambase, overwrite=TRUE)

SystemAdministrators = read.csv(file.path('data-raw', 'SystemAdministrators.csv.gz'))
use_data(SystemAdministrators, overwrite=TRUE)

Tayko = read.csv(file.path('data-raw', 'Tayko.csv.gz'))
use_data(Tayko, overwrite=TRUE)

TinyData = read.csv(file.path('data-raw', 'TinyData.csv.gz'), stringsAsFactors = TRUE)
use_data(TinyData, overwrite=TRUE)

ToyotaCorolla = read.csv(file.path('data-raw', 'ToyotaCorolla.csv.gz'))
use_data(ToyotaCorolla, overwrite=TRUE)

UniversalBank = read.csv(file.path('data-raw', 'UniversalBank.csv.gz'))
use_data(UniversalBank, overwrite=TRUE)

Utilities = read.csv(file.path('data-raw', 'Utilities.csv.gz'))
use_data(Utilities, overwrite=TRUE)

Universities = read.csv(file.path('data-raw', 'Universities.csv.gz'))
use_data(Universities, overwrite=TRUE)

Veerhoven = read.csv(file.path('data-raw', 'Veerhoven.csv.gz'))
use_data(Veerhoven, overwrite=TRUE)

VoterPersuasion = read.csv(file.path('data-raw', 'Voter-Persuasion.csv.gz'))
use_data(VoterPersuasion, overwrite=TRUE)

WestRoxbury = read.csv(file.path('data-raw', 'WestRoxbury.csv.gz'))
use_data(WestRoxbury, overwrite=TRUE)

Wine = read.csv(file.path('data-raw', 'Wine.csv.gz'))
use_data(Wine, overwrite=TRUE)

