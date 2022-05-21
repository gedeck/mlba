library(dplyr)
library(devtools)


Accidents = read.csv(file.path('data-raw', 'accidents.csv.gz'))
use_data(Accidents, overwrite=TRUE)

AccidentsFull = read.csv(file.path('data-raw', 'accidentsFull.csv.gz'))
use_data(AccidentsFull, overwrite=TRUE)

set.seed(1)
Accidents1000 = AccidentsFull %>%
  rename(
    RushHour=HOUR_I_R,
    WKDY=WKDY_I_R,
    LEVEL=PROFIL_I_R
  ) %>%
  mutate(
    LGTCON_day=ifelse(AccidentsFull$LGTCON_I_R == 1, 1, 0),
    SUR_COND_dry=ifelse(AccidentsFull$SUR_COND == 1, 1, 0),
    TRAF_two_way=ifelse(AccidentsFull$TRAF_WAY == 1, 1, 0),
    WEATHER_adverse=ifelse(AccidentsFull$WEATHER_R == 1, 0, 1),
    MAX_SEV=ifelse(AccidentsFull$MAX_SEV_IR==0, "no-injury", ifelse(AccidentsFull$MAX_SEV_IR==1, "non-fatal", "fatal"))
  )  %>%
  slice_sample(n=1000) %>%
  select(all_of(colnames(Accidents)))
use_data(Accidents1000, overwrite=TRUE)

AccidentsNN = read.csv(file.path('data-raw', 'accidentsnn.csv.gz'))
use_data(AccidentsNN, overwrite=TRUE)

Amtrak = read.csv(file.path('data-raw', 'Amtrak.csv.gz'))
use_data(Amtrak, overwrite=TRUE)

Airfares = read.csv(file.path('data-raw', 'Airfares.csv.gz'))
use_data(Airfares, overwrite=TRUE)

ApplianceShipments = read.csv(file.path('data-raw', 'ApplianceShipments.csv.gz'))
use_data(ApplianceShipments, overwrite=TRUE)

#file.copy(from=file.path('data-raw', 'AutoAndElectronics.zip'),
#          to=file.path('inst', 'extdata', 'AutoAndElectronics.zip'),
#          overwrite=TRUE, copy.mode=TRUE)

# Dataset no longer used
#Bankruptcy = read.csv(file.path('data-raw', 'Bankruptcy.csv.gz'))
#use_data(Bankruptcy, overwrite=TRUE)

Banks = read.csv(file.path('data-raw', 'banks.csv.gz'))
use_data(Banks, overwrite=TRUE)

BankBiasData = read.csv(file.path('data-raw', 'Bank-bias-data.csv.gz'))
use_data(BankBiasData, overwrite=TRUE)

BareggTunnel = read.csv(file.path('data-raw', 'BareggTunnel.csv.gz'))
use_data(BareggTunnel, overwrite=TRUE)

BathSoapHousehold = read.csv(file.path('data-raw', 'BathSoapHousehold.csv.gz'))
use_data(BathSoapHousehold, overwrite=TRUE)

Bicup2006 = read.csv(file.path('data-raw', 'bicup2006.csv.gz'))
use_data(Bicup2006, overwrite=TRUE)

BostonHousing = read.csv(file.path('data-raw', 'BostonHousing.csv.gz')) %>%
  rename(CAT.MEDV=CAT..MEDV)
use_data(BostonHousing, overwrite=TRUE)

CatalogCrossSell = read.csv(file.path('data-raw', 'CatalogCrossSell.csv.gz'))
use_data(CatalogCrossSell, overwrite=TRUE)

Cereals = read.csv(file.path('data-raw', 'Cereals.csv.gz'))
use_data(Cereals, overwrite=TRUE)

CharlesBookClub = read.csv(file.path('data-raw', 'CharlesBookClub.csv.gz'))
use_data(CharlesBookClub, overwrite=TRUE)

COMPAS_clean = read.csv(file.path('data-raw', 'COMPAS-clean.csv.gz'))
use_data(COMPAS_clean, overwrite=TRUE)

CourseTopics = read.csv(file.path('data-raw', 'Coursetopics.csv.gz'))
use_data(CourseTopics, overwrite=TRUE)

CourseRating = read.csv(file.path('data-raw', 'courserating.csv.gz'))
use_data(CourseRating, overwrite=TRUE)

Cosmetics = read.csv(file.path('data-raw', 'Cosmetics.csv.gz'))
use_data(Cosmetics, overwrite=TRUE)

Drug = read.csv(file.path('data-raw', 'drug.csv.gz'))
use_data(Drug, overwrite=TRUE)

EastWestAirlinesCluster = read.csv(file.path('data-raw', 'EastWestAirlinesCluster.csv.gz'))
use_data(EastWestAirlinesCluster, overwrite=TRUE)

EastWestAirlinesNN = read.csv(file.path('data-raw', 'EastWestAirlinesNN.csv.gz'))
EastWestAirlinesNN = rename(EastWestAirlinesNN,
                            cc1_miles = cc1_miles.,
                            cc2_miles = cc2_miles.,
                            cc3_miles = cc3_miles.)
use_data(EastWestAirlinesNN, overwrite=TRUE)

eBayAuctions = read.csv(file.path('data-raw', 'eBayAuctions.csv.gz'))
use_data(eBayAuctions, overwrite=TRUE)

eBayNetwork = read.csv(file.path('data-raw', 'eBayNetwork.csv.gz'))
use_data(eBayNetwork, overwrite=TRUE)

eBayTreemap = read.csv(file.path('data-raw', 'EbayTreemap.csv.gz'))
use_data(eBayTreemap, overwrite=TRUE)

EmailABtest = read.csv(file.path('data-raw', 'email-A-B-test.csv.gz'))
use_data(EmailABtest, overwrite=TRUE)

Faceplate = read.csv(file.path('data-raw', 'Faceplate.csv.gz'))
use_data(Faceplate, overwrite=TRUE)

FlightDelays = read.csv(file.path('data-raw', 'FlightDelays.csv.gz'))
use_data(FlightDelays, overwrite=TRUE)

Fundraising = read.csv(file.path('data-raw', 'Fundraising.csv.gz'), stringsAsFactors = TRUE)
use_data(Fundraising, overwrite=TRUE)

FutureFundraising = read.csv(file.path('data-raw', 'FutureFundraising.csv.gz'), stringsAsFactors = TRUE)
use_data(FutureFundraising, overwrite=TRUE)

GDP = read.csv(file.path('data-raw', 'gdp.csv.gz'), skip = 4, stringsAsFactors = FALSE)
names(GDP)[5] <- "GDP2015"
use_data(GDP, overwrite=TRUE)

GermanCredit = read.csv(file.path('data-raw', 'GermanCredit.csv.gz'), stringsAsFactors = TRUE)
use_data(GermanCredit, overwrite=TRUE)

HairCareProduct = read.csv(file.path('data-raw', 'Hair-Care-Product.csv.gz'))
use_data(HairCareProduct, overwrite=TRUE)

IMDBdataset10K = read.csv(file.path('data-raw', 'IMDB-Dataset-10K.csv.gz'))
use_data(IMDBdataset10K, overwrite=TRUE)

LaptopSales = read.csv(file.path('data-raw', 'LaptopSales.csv.gz'), stringsAsFactors = FALSE)
use_data(LaptopSales, overwrite=TRUE)

LaptopSalesJanuary2008 = read.csv(file.path('data-raw', 'LaptopSalesJanuary2008.csv.gz'), stringsAsFactors = FALSE)
use_data(LaptopSalesJanuary2008, overwrite=TRUE)

LiftExample = read.csv(file.path('data-raw', 'liftExample.csv.gz'), stringsAsFactors = TRUE)
use_data(LiftExample, overwrite=TRUE)

MovieLensMovies = read.csv(file.path('data-raw', 'MovieLensMovies.csv.gz'), stringsAsFactors = TRUE, encoding="UTF-8")
use_data(MovieLensMovies, overwrite=TRUE)

MovieLensRatings = read.csv(file.path('data-raw', 'MovieLensRatings.csv.gz'), stringsAsFactors = TRUE, encoding="UTF-8")
use_data(MovieLensRatings, overwrite=TRUE)

NYPDMotorVehicleCollisions = read.csv(file.path('data-raw', 'NYPD_Motor_Vehicle_Collisions_1000.csv.gz'))
NYPDMotorVehicleCollisions = NYPDMotorVehicleCollisions[order(as.Date(NYPDMotorVehicleCollisions$DATE, format = "%m/%d/%Y")),]
use_data(NYPDMotorVehicleCollisions, overwrite=TRUE)

OwnerExample = read.csv(file.path('data-raw', 'ownerExample.csv.gz'),stringsAsFactors = TRUE)
use_data(OwnerExample, overwrite=TRUE)

Pharmaceuticals = read.csv(file.path('data-raw', 'Pharmaceuticals.csv.gz'))
use_data(Pharmaceuticals, overwrite=TRUE)

RidingMowers = read.csv(file.path('data-raw', 'RidingMowers.csv.gz'))
use_data(RidingMowers, overwrite=TRUE)

SCstudents = read.csv(file.path('data-raw', 'SC-US-students-GPS-data-2016.csv.gz'))
use_data(SCstudents, overwrite=TRUE)

SP500 = read.csv(file.path('data-raw', 'SP500.csv.gz'))
use_data(SP500, overwrite=TRUE)

Spambase = read.csv(file.path('data-raw', 'spambase.csv.gz'))
use_data(Spambase, overwrite=TRUE)

SystemAdministrators = read.csv(file.path('data-raw', 'SystemAdministrators.csv.gz'))
use_data(SystemAdministrators, overwrite=TRUE)

Tayko = read.csv(file.path('data-raw', 'Tayko.csv.gz'))
use_data(Tayko, overwrite=TRUE)

TaxiCancellationCase = read.csv(file.path('data-raw', 'Taxi-cancellation-case.csv.gz'))
use_data(TaxiCancellationCase, overwrite=TRUE)

TinyData = read.csv(file.path('data-raw', 'TinyData.csv.gz'), stringsAsFactors = TRUE)
use_data(TinyData, overwrite=TRUE)

ToyotaCorolla = read.csv(file.path('data-raw', 'ToyotaCorolla.csv.gz'))
use_data(ToyotaCorolla, overwrite=TRUE)

UniversalBank = read.csv(file.path('data-raw', 'UniversalBank.csv.gz'))
use_data(UniversalBank, overwrite=TRUE)

UniversalBankCase = read.csv(file.path('data-raw', 'UniversalBankCase.csv.gz'))
use_data(UniversalBankCase, overwrite=TRUE)

Utilities = read.csv(file.path('data-raw', 'Utilities.csv.gz'))
use_data(Utilities, overwrite=TRUE)

Universities = read.csv(file.path('data-raw', 'Universities.csv.gz'), stringsAsFactors = TRUE)
use_data(Universities, overwrite=TRUE)

Veerhoven = read.csv(file.path('data-raw', 'Veerhoven.csv.gz'))
use_data(Veerhoven, overwrite=TRUE)

VoterPersuasion = read.csv(file.path('data-raw', 'Voter-Persuasion.csv.gz'))
use_data(VoterPersuasion, overwrite=TRUE)

WestRoxbury = read.csv(file.path('data-raw', 'WestRoxbury.csv.gz'))
use_data(WestRoxbury, overwrite=TRUE)

Wine = read.csv(file.path('data-raw', 'Wine.csv.gz'))
use_data(Wine, overwrite=TRUE)

# Time series
ApplianceShipments = read.csv(file.path('data-raw', 'ApplianceShipments.csv.gz'))
use_data(ApplianceShipments, overwrite=TRUE)

AustralianWines = read.csv(file.path('data-raw', 'AustralianWines.csv.gz'),
                           header=FALSE, sep=",", skip=1,
                           col.names=c('month', 'fortified','red', 'rose', 'sparkling','sweet white', 'dry white'),
                           na.strings='*', stringsAsFactors=FALSE)
use_data(AustralianWines, overwrite=TRUE)

CanadianWorkHours = read.csv(file.path('data-raw', 'CanadianWorkHours.csv.gz'))
use_data(CanadianWorkHours, overwrite=TRUE)

DepartmentStoreSales = read.csv(file.path('data-raw', 'DepartmentStoreSales.csv.gz'))
use_data(DepartmentStoreSales, overwrite=TRUE)

FarmAds <- read.csv(file.path('data-raw', 'Farm-ads.csv.gz'), header = FALSE,
                    col.names=c('label', 'text'), stringsAsFactors=FALSE)
# FarmAds$text <- as.character(FarmAds$text)
use_data(FarmAds, overwrite=TRUE)

NaturalGasSales = read.csv(file.path('data-raw', 'NaturalGasSales.csv.gz'))
use_data(NaturalGasSales, overwrite=TRUE)

Sept11Travel = read.csv(file.path('data-raw', 'Sept11Travel.csv.gz'))
use_data(Sept11Travel, overwrite=TRUE)

ShampooSales = read.csv(file.path('data-raw', 'ShampooSales.csv.gz'))
use_data(ShampooSales, overwrite=TRUE)

SouvenirSales = read.csv(file.path('data-raw', 'SouvenirSales.csv.gz'))
use_data(SouvenirSales, overwrite=TRUE)

ToysRUsRevenues = read.csv(file.path('data-raw', 'ToysRUsRevenues.csv.gz'))
use_data(ToysRUsRevenues, overwrite=TRUE)

WalMartStock = read.csv(file.path('data-raw', 'WalMartStock.csv.gz'))
use_data(WalMartStock, overwrite=TRUE)
