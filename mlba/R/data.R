# Run devtools::document()

#' accidents
#'
#' Data
#' @format A data frame with 600 observations and 11 variables:
#' \describe{
#' \item{RushHour}{}
#' \item{WRK_ZONE}{}
#' \item{WKDY}{}
#' \item{INT_HWY}{}
#' \item{LGTCON_day}{}
#' \item{LEVEL}{}
#' \item{SPD_LIM}{}
#' \item{SUR_COND_dry}{}
#' \item{TRAF_two_way}{}
#' \item{WEATHER_adverse}{}
#' \item{MAX_SEV}{}
#' }
#'
#' @examples
#' accidents
"accidents"


#' accidents
#'
#' These data, from the U.S. Bureau of Transportation Statistics, can be used to predict
#' whether an accident will results in injuries or fatalities, based on  predictors
#' such as alcohol involvement, time of day, road condition, etc.  Such a prediction
#' system could be used to prioritize responder resources at the time of the report.
#'
#'  Data are for the year 2001.
#'
#' @format A data frame with 42183 observations and 24 variables:
#' \describe{
#' \item{HOUR_I_R}{1 = rush hour, 0 = not (rush = 6-9 am, 4-7 pm)}
#' \item{ALCHL_I}{1 = Alcohol involved, 2 = not involved}
#' \item{ALIGN_I}{1 = straight, 2 = curve}
#' \item{STRATUM_R}{1 = NASS Crashes Involving At Least One Passenger Vehicle,
#' i.e., A Passenger Car, Sport Utility Vehicle, Pickup Truck Or Van) Towed Due To
#' Damage From The Crash Scene And No Medium Or Heavy Trucks Are Involved. 0 = not}
#' \item{WRK_ZONE}{1 = yes, 0 = no}
#' \item{WKDY_I_R}{1 = weekday, 0 = weekend}
#' \item{INT_HWY}{Interstate? 1 = yes, 0 = no }
#' \item{LGTCON_I_R}{Light conditions - 1 = day, 2 = dark (including dawn/dusk),
#'  3 = dark, but lighted, 4 = dawn or dusk}
#' \item{MANCOL_I_R}{0 = no collision, 1 = head-on, 2 = other form of collision}
#' \item{PED_ACC_R}{1 = pedestrian/cyclist involved, 0 = not}
#' \item{RELJCT_I_R}{1 = accident at intersection/interchange, 0 = not at intersection}
#' \item{REL_RWY_R}{1 = accident on roadway, 0 = not on roadway}
#' \item{PROFIL_I_R}{1 = level, 0 = other}
#' \item{SPD_LIM}{Speed limit, miles per hour}
#' \item{SUR_COND}{Surface conditions (1 = dry, 2 = wet, 3 = snow/slush, 4 = ice, 5 = sand/dirt/oil, 8 = other, 9 = unknown)}
#' \item{TRAF_CON_R}{Traffic control device: 0 = none, 1 = signal, 2 = other (sign, officer …)}
#' \item{TRAF_WAY}{1 = two-way traffic, 2 = divided hwy, 3 = one-way road}
#' \item{VEH_INVL}{Number of vehicles involved}
#' \item{WEATHER_R}{1 = no adverse conditions, 2 = rain, snow or other adverse condition}
#' \item{INJURY_CRASH}{1 = yes, 0 = no}
#' \item{NO_INJ_I}{Number of injuries}
#' \item{PRPTYDMG_CRASH}{1 = property damage, 2 = no property damage}
#' \item{FATALITIES}{1 = yes, 0 = no}
#' \item{MAX_SEV_IR}{0 = no injury, 1 = non-fatal inj., 2 = fatal inj.}
#' }
#'
#' Source: US Dept. of Transportation, Bureau of Transportation Statistics,
#' "TranStats," (www.transtats.bts.gov -- select "databases" then "General Estimate System (GES))
#' http://www.transtats.bts.gov/Fields.asp?Table_ID=1158&SYS_Table_Name=T_GES_ACCIDENT&User_Table_Name=Accident&Year_Info=1&First_Year=1999&Last_Year=2001&Rate_Info=1&Frequency=Annual&Data_Frequency=Annual,Monthly&Map_Info=&Is_Survey=1&Univ_Filter=&Latest_Available_Data=2001
#' Note:  TranStats reports both variables with missing data, and their derived
#' counterparts with imputed values filled in, denoted by an "I" at the end.
#' Only one variant (the original or the derived) is included here. An "R" at the
#' end of the variable name indicates that the Transtats variable has been
#' collapsed into fewer categories for analysis purposes.
#'
#' @examples
#' accidentsFull
"accidentsFull"


#' accidentsnn
#'
#' Data
#' @format A data frame with 999 observations and 5 variables:
#' \describe{
#' \item{ALCHL_I}{}
#' \item{PROFIL_I_R}{}
#' \item{SUR_COND}{}
#' \item{VEH_INVL}{}
#' \item{MAX_SEV_IR}{}
#' }
#'
#' @examples
#' head(accidentsnn)
"accidentsnn"


#' Amtrak
#'
#' Data
#' @format A data frame with 159 observations and 2 variables:
#' \describe{
#' \item{Month}{}
#' \item{Ridership}{}
#' }
#'
#' @examples
#' Amtrak
"Amtrak"


#' Airfares
#'
#' Data
#' @format A data frame with 638 observations and 18 variables:
#' \describe{
#' \item{S_CODE}{}
#' \item{S_CITY}{}
#' \item{E_CODE}{}
#' \item{E_CITY}{}
#' \item{COUPON}{}
#' \item{NEW}{}
#' \item{VACATION}{}
#' \item{SW}{}
#' \item{HI}{}
#' \item{S_INCOME}{}
#' \item{E_INCOME}{}
#' \item{S_POP}{}
#' \item{E_POP}{}
#' \item{SLOT}{}
#' \item{GATE}{}
#' \item{DISTANCE}{}
#' \item{PAX}{}
#' \item{FARE}{}
#' }
#'
#' @examples
#' head(Airfares)
"Airfares"


#' Applicance Shipments
#'
#' Data
#' @format A data frame with 20 observations and 2 variables:
#' \describe{
#' \item{Quarter}{}
#' \item{Shipments}{}
#' }
#'
#' @examples
#' ApplianceShipments
"ApplianceShipments"


#' Boston Housing
#'
#' Data
#' @format A data frame with 506 observations and 14 variables:
#' \describe{
#' \item{CRIM}{}
#' \item{ZN}{}
#' \item{INDUS}{}
#' \item{CHAS}{}
#' \item{NOX}{}
#' \item{RM}{}
#' \item{AGE}{}
#' \item{DIS}{}
#' \item{RAD}{}
#' \item{TAX}{}
#' \item{PTRATIO}{}
#' \item{LSTAT}{}
#' \item{MEDV}{}
#' \item{CAT.MEDV}{}
#' }
#'
#' @examples
#' BostonHousing
"BostonHousing"


#' Charles Book Club
#'
#' Data
#' @format A data frame with 4000 observations and 24 variables:
#' \describe{
#' \item{Seq.}{}
#' \item{ID.}{}
#' \item{Gender}{}
#' \item{M}{}
#' \item{R}{}
#' \item{F}{}
#' \item{FirstPurch}{}
#' \item{ChildBks}{}
#' \item{YouthBks}{}
#' \item{CookBks}{}
#' \item{DoItYBks}{}
#' \item{RefBks}{}
#' \item{ArtBks}{}
#' \item{GeogBks}{}
#' \item{ItalCook}{}
#' \item{ItalAtlas}{}
#' \item{ItalArt}{}
#' \item{Florence}{}
#' \item{Related.Purchase}{}
#' \item{Mcode}{}
#' \item{Rcode}{}
#' \item{Fcode}{}
#' \item{Yes_Florence}{}
#' \item{No_Florence}{}
#' }
#'
#' @examples
#' head(CharlesBookClub)
"CharlesBookClub"


#' Cereals
#'
#' Data
#' @format A data frame with 77 observations and 16 variables:
#' \describe{
#' \item{name}{}
#' \item{mfr}{}
#' \item{type}{}
#' \item{calories}{}
#' \item{protein}{}
#' \item{fat}{}
#' \item{sodium}{}
#' \item{fiber}{}
#' \item{carbo}{}
#' \item{sugars}{}
#' \item{potass}{}
#' \item{vitamins}{}
#' \item{shelf}{}
#' \item{weight}{}
#' \item{cups}{}
#' \item{rating}{}
#' }
#'
#' @examples
#' Cereals
"Cereals"


#' drug
#'
#' Data
#' @format A data frame with 60 observations and 7 variables:
#' \describe{
#' \item{Entity}{}
#' \item{Related.Entity}{}
#' \item{Relationship}{}
#' \item{Descrption}{}
#' \item{Related.Entity.Address.1}{}
#' \item{Related.Entity.Address.2}{}
#' \item{Related.Address.3}{}
#' }
#'
#' @examples
#' drug
"drug"


#' ebay Network
#'
#' Data
#' @format A data frame with 200 observations and 5 variables:
#' \describe{
#' \item{Seller}{}
#' \item{Bidder}{}
#' \item{Weight}{}
#' \item{Bidder.Volume}{}
#' \item{Seller.Volume}{}
#' }
#'
#' @examples
#' eBayNetwork
"eBayNetwork"


#' ebay Treemap
#'
#' Data
#' @format A data frame with 10078 observations and 5 variables:
#' \describe{
#' \item{High.Bid}{}
#' \item{Seller.Feedback}{}
#' \item{Category}{}
#' \item{Sub.Category}{}
#' \item{Brand}{}
#' }
#'
#' @examples
#' head(eBayTreemap)
"eBayTreemap"


#' Faceplate
#'
#' Data
#' @format A data frame with 10 observations and 7 variables:
#' \describe{
#' \item{Transaction}{}
#' \item{Red}{}
#' \item{White}{}
#' \item{Blue}{}
#' \item{Orange}{}
#' \item{Green}{}
#' \item{Yellow}{}
#' }
#'
#' @examples
#' Faceplate
"Faceplate"


#' Flight delays
#'
#' Data
#' @format A data frame with 2201 observations and 13 variables:
#' \describe{
#' \item{CRS_DEP_TIME}{}
#' \item{CARRIER}{}
#' \item{DEP_TIME}{}
#' \item{DEST}{}
#' \item{DISTANCE}{}
#' \item{FL_DATE}{}
#' \item{FL_NUM}{}
#' \item{ORIGIN}{}
#' \item{Weather}{}
#' \item{DAY_WEEK}{}
#' \item{DAY_OF_MONTH}{}
#' \item{TAIL_NUM}{}
#' \item{Flight.Status}{}
#' }
#'
#' @examples
#' head(FlightDelays)
"FlightDelays"


#' GDP
#'
#' Data
#' @format A data frame with 264 observations and 5 variables:
#' \describe{
#' \item{Country.Name}{}
#' \item{Country.Code}{}
#' \item{Indicator.Name}{}
#' \item{Indicator.Code}{}
#' \item{GDP2015}{}
#' }
#'
#' @examples
#' head(gdp)
"gdp"


#' Laptop Sales January 2008
#'
#' Data
#' @format A data frame with 7956 observations and 17 variables:
#' \describe{
#' \item{Date}{}
#' \item{Configuration}{}
#' \item{Customer.Postcode}{}
#' \item{Store.Postcode}{}
#' \item{Retail.Price}{}
#' \item{Screen.Size..Inches.}{}
#' \item{Battery.Life..Hours.}{}
#' \item{RAM..GB.}{}
#' \item{Processor.Speeds..GHz.}{}
#' \item{Integrated.Wireless.}{}
#' \item{HD.Size..GB.}{}
#' \item{Bundled.Applications.}{}
#' \item{OS.X.Customer}{}
#' \item{OS.Y.Customer}{}
#' \item{OS.X.Store}{}
#' \item{OS.Y.Store}{}
#' \item{CustomerStoreDistance}{}
#' }
#'
#' @examples
#' head(LaptopSalesJanuary2008)
"LaptopSalesJanuary2008"


#' Lift example
#'
#' Data
#' @format A data frame with 24 observations and 2 variables:
#' \describe{
#' \item{prob}{}
#' \item{actual}{}
#' }
#'
#' @examples
#' head(liftExample)
"liftExample"


#' NYPD Motor Vehicle Collisions
#'
#' Data
#' @format A data frame with 1000 observations and 29 variables:
#' \describe{
#' \item{DATE}{}
#' \item{TIME}{}
#' \item{BOROUGH}{}
#' \item{ZIP.CODE}{}
#' \item{LATITUDE}{}
#' \item{LONGITUDE}{}
#' \item{LOCATION}{}
#' \item{ON.STREET.NAME}{}
#' \item{CROSS.STREET.NAME}{}
#' \item{OFF.STREET.NAME}{}
#' \item{NUMBER.OF.PERSONS.INJURED}{}
#' \item{NUMBER.OF.PERSONS.KILLED}{}
#' \item{NUMBER.OF.PEDESTRIANS.INJURED}{}
#' \item{NUMBER.OF.PEDESTRIANS.KILLED}{}
#' \item{NUMBER.OF.CYCLIST.INJURED}{}
#' \item{NUMBER.OF.CYCLIST.KILLED}{}
#' \item{NUMBER.OF.MOTORIST.INJURED}{}
#' \item{NUMBER.OF.MOTORIST.KILLED}{}
#' \item{CONTRIBUTING.FACTOR.VEHICLE.1}{}
#' \item{CONTRIBUTING.FACTOR.VEHICLE.2}{}
#' \item{CONTRIBUTING.FACTOR.VEHICLE.3}{}
#' \item{CONTRIBUTING.FACTOR.VEHICLE.4}{}
#' \item{CONTRIBUTING.FACTOR.VEHICLE.5}{}
#' \item{UNIQUE.KEY}{}
#' \item{VEHICLE.TYPE.CODE.1}{}
#' \item{VEHICLE.TYPE.CODE.2}{}
#' \item{VEHICLE.TYPE.CODE.3}{}
#' \item{VEHICLE.TYPE.CODE.4}{}
#' \item{VEHICLE.TYPE.CODE.5}{}
#' }
#'
#' @examples
#' head(NYPDMotorVehicleCollisions)
"NYPDMotorVehicleCollisions"


#' Owner example
#'
#' Data
#' @format A data frame with 24 observations and 2 variables:
#' \describe{
#' \item{Class}{}
#' \item{Probability}{}
#' }
#'
#' @examples
#' head(ownerExample)
"ownerExample"


#' statistics.com Students
#'
#' Data
#' @format A data frame with 1696 observations and 2 variables:
#' \describe{
#' \item{latitude}{}
#' \item{longitude}{}
#' }
#'
#' @examples
#' head(SCstudents)
"SCstudents"


#' SP500
#'
#' Data
#' @format A data frame with 100 observations and 2 variables:
#' \describe{
#' \item{Date}{}
#' \item{Close}{}
#' }
#'
#' @examples
#' head(SP500)
"SP500"


#' Riding Mowers
#'
#' Data
#' @format A data frame with 24 observations and 3 variables:
#' \describe{
#' \item{Income}{}
#' \item{Lot_Size}{}
#' \item{Ownership}{}
#' }
#'
#' @examples
#' head(RidingMowers)
"RidingMowers"


#' Tayko
#'
#' Data
#' @format A data frame with 2000 observations and 25 variables:
#' \describe{
#' \item{sequence_number}{}
#' \item{US}{}
#' \item{source_a}{}
#' \item{source_c}{}
#' \item{source_b}{}
#' \item{source_d}{}
#' \item{source_e}{}
#' \item{source_m}{}
#' \item{source_o}{}
#' \item{source_h}{}
#' \item{source_r}{}
#' \item{source_s}{}
#' \item{source_t}{}
#' \item{source_u}{}
#' \item{source_p}{}
#' \item{source_x}{}
#' \item{source_w}{}
#' \item{Freq}{}
#' \item{last_update_days_ago}{}
#' \item{X1st_update_days_ago}{}
#' \item{Web.order}{}
#' \item{Gender.male}{}
#' \item{Address_is_res}{}
#' \item{Purchase}{}
#' \item{Spending}{}
#' }
#'
#' @examples
#' head(Tayko)
"Tayko"


#' TinyData
#'
#' Data
#' @format A data frame with 6 observations and 4 variables:
#' \describe{
#' \item{Obs.}{}
#' \item{Fat}{}
#' \item{Salt}{}
#' \item{Acceptance}{}
#' }
#'
#' @examples
#' head(TinyData)
"TinyData"


#' Toyoto Corolla
#'
#' Data
#' @format A data frame with 1436 observations and 39 variables:
#' \describe{
#' \item{Id}{}
#' \item{Model}{}
#' \item{Price}{}
#' \item{Age_08_04}{}
#' \item{Mfg_Month}{}
#' \item{Mfg_Year}{}
#' \item{KM}{}
#' \item{Fuel_Type}{}
#' \item{HP}{}
#' \item{Met_Color}{}
#' \item{Color}{}
#' \item{Automatic}{}
#' \item{CC}{}
#' \item{Doors}{}
#' \item{Cylinders}{}
#' \item{Gears}{}
#' \item{Quarterly_Tax}{}
#' \item{Weight}{}
#' \item{Mfr_Guarantee}{}
#' \item{BOVAG_Guarantee}{}
#' \item{Guarantee_Period}{}
#' \item{ABS}{}
#' \item{Airbag_1}{}
#' \item{Airbag_2}{}
#' \item{Airco}{}
#' \item{Automatic_airco}{}
#' \item{Boardcomputer}{}
#' \item{CD_Player}{}
#' \item{Central_Lock}{}
#' \item{Powered_Windows}{}
#' \item{Power_Steering}{}
#' \item{Radio}{}
#' \item{Mistlamps}{}
#' \item{Sport_Model}{}
#' \item{Backseat_Divider}{}
#' \item{Metallic_Rim}{}
#' \item{Radio_cassette}{}
#' \item{Parking_Assistant}{}
#' \item{Tow_Bar}{}
#' }
#'
#' @examples
#' head(ToyotaCorolla)
"ToyotaCorolla"


#' Utilities
#'
#' Data
#' @format A data frame with 22 observations and 9 variables:
#' \describe{
#' \item{Company}{}
#' \item{Fixed_charge}{}
#' \item{RoR}{}
#' \item{Cost}{}
#' \item{Load_factor}{}
#' \item{Demand_growth}{}
#' \item{Sales}{}
#' \item{Nuclear}{}
#' \item{Fuel_Cost}{}
#' }
#'
#' @examples
#' Utilities
"Utilities"


#' UniversalBank
#'
#' Data
#' @format A data frame with 500 observations and 14 variables:
#' \describe{
#' \item{ID}{}
#' \item{Age}{}
#' \item{Experience}{}
#' \item{Income}{}
#' \item{ZIP.Code}{}
#' \item{Family}{}
#' \item{CCAvg}{}
#' \item{Education}{}
#' \item{Mortgage}{}
#' \item{Personal.Loan}{}
#' \item{Securities.Account}{}
#' \item{CD.Account}{}
#' \item{Online}{}
#' \item{CreditCard}{}
#' }
#'
#' @examples
#' UniversalBank
"UniversalBank"


#' Universities
#'
#' Data
#' @format A data frame with 1302 observations and 20 variables:
#' \describe{
#' \item{College.Name}{}
#' \item{State}{}
#' \item{Public..1...Private..2.}{}
#' \item{X..appli..rec.d}{}
#' \item{X..appl..accepted}{}
#' \item{X..new.stud..enrolled}{}
#' \item{X..new.stud..from.top.10.}{}
#' \item{X..new.stud..from.top.25.}{}
#' \item{X..FT.undergrad}{}
#' \item{X..PT.undergrad}{}
#' \item{in.state.tuition}{}
#' \item{out.of.state.tuition}{}
#' \item{room}{}
#' \item{board}{}
#' \item{add..fees}{}
#' \item{estim..book.costs}{}
#' \item{estim..personal..}{}
#' \item{X..fac..w.PHD}{}
#' \item{stud..fac..ratio}{}
#' \item{Graduation.rate}{}
#' }
#'
#' @examples
#' head(Universities)
"Universities"


#' Veerhoven.
#'
#' Data
#' @format A data frame with 159 observations and 5 variables:
#' \describe{
#' \item{Serial}{}
#' \item{Code}{}
#' \item{Nation}{}
#' \item{Score}{}
#' \item{X..surveys}{}
#' }
#'
#' @examples
#' Veerhoven
"Veerhoven"


#' VoterPersuasion
#'
#' Data
#' @format A data frame with 10000 observations and 79 variables:
#' \describe{
#' \item{VOTER_ID}{}
#' \item{SET_NO}{}
#' \item{OPP_SEX}{}
#' \item{AGE}{}
#' \item{HH_ND}{}
#' \item{HH_NR}{}
#' \item{HH_NI}{}
#' \item{MED_AGE}{}
#' \item{NH_WHITE}{}
#' \item{NH_AA}{}
#' \item{NH_ASIAN}{}
#' \item{NH_MULT}{}
#' \item{HISP}{}
#' \item{COMM_LT10}{}
#' \item{COMM_609P}{}
#' \item{MED_HH_INC}{}
#' \item{COMM_CAR}{}
#' \item{COMM_CP}{}
#' \item{COMM_PT}{}
#' \item{COMM_WALK}{}
#' \item{KIDS}{}
#' \item{M_MAR}{}
#' \item{F_MAR}{}
#' \item{ED_4COL}{}
#' \item{GENDER_F}{}
#' \item{GENDER_M}{}
#' \item{H_AFDLN3P}{}
#' \item{H_F1}{}
#' \item{H_M1}{}
#' \item{H_MFDLN3P}{}
#' \item{PARTY_D}{}
#' \item{PARTY_I}{}
#' \item{PARTY_R}{}
#' \item{VPP_08}{}
#' \item{VPP_12}{}
#' \item{VPR_08}{}
#' \item{VPR_10}{}
#' \item{VPR_12}{}
#' \item{VG_04}{}
#' \item{VG_06}{}
#' \item{VG_08}{}
#' \item{VG_10}{}
#' \item{VG_12}{}
#' \item{PP_PELIG}{}
#' \item{PR_PELIG}{}
#' \item{AP_PELIG}{}
#' \item{G_PELIG}{}
#' \item{E_PELIG}{}
#' \item{NL5G}{}
#' \item{NL3PR}{}
#' \item{NL5AP}{}
#' \item{NL2PP}{}
#' \item{REG_DAYS}{}
#' \item{UPSCALEBUY}{}
#' \item{UPSCALEMAL}{}
#' \item{UPSCALEFEM}{}
#' \item{BOOKBUYERI}{}
#' \item{FAMILYMAGA}{}
#' \item{FEMALEORIE}{}
#' \item{RELIGIOUSM}{}
#' \item{GARDENINGM}{}
#' \item{CULINARYIN}{}
#' \item{HEALTHFITN}{}
#' \item{DOITYOURSE}{}
#' \item{FINANCIALM}{}
#' \item{RELIGIOUSC}{}
#' \item{POLITICALC}{}
#' \item{MEDIANEDUC}{}
#' \item{CAND1S}{}
#' \item{CAND2S}{}
#' \item{MESSAGE_A}{}
#' \item{MESSAGE_A_REV}{}
#' \item{I3}{}
#' \item{CAND1_UND}{}
#' \item{CAND2_UND}{}
#' \item{MOVED_AD}{}
#' \item{MOVED_A}{}
#' \item{opposite}{}
#' \item{Partition}{}
#' }
#'
#' @examples
#' VoterPersuasion
"VoterPersuasion"


#' West Roxbury.
#'
#' Data
#' @format A data frame with 5802 observations and 14 variables:
#' \describe{
#' \item{TOTAL.VALUE}{}
#' \item{TAX}{}
#' \item{LOT.SQFT}{}
#' \item{YR.BUILT}{}
#' \item{GROSS.AREA}{}
#' \item{LIVING.AREA}{}
#' \item{FLOORS}{}
#' \item{ROOMS}{}
#' \item{BEDROOMS}{}
#' \item{FULL.BATH}{}
#' \item{HALF.BATH}{}
#' \item{KITCHEN}{}
#' \item{FIREPLACE}{}
#' \item{REMODEL}{}
#' }
#'
#' @examples
#' WestRoxbury
"WestRoxbury"

#' Wine.
#'
#' Data
#' @format A data frame with 178 observations and 14 variables:
#' \describe{
#' \item{Type}{}
#' \item{Alcohol}{}
#' \item{Malic_Acid}{}
#' \item{Ash}{}
#' \item{Ash_Alcalinity}{}
#' \item{Magnesium}{}
#' \item{Total_Phenols}{}
#' \item{Flavanoids}{}
#' \item{Nonflavanoid_Phenols}{}
#' \item{Proanthocyanins}{}
#' \item{Color_Intensity}{}
#' \item{Hue}{}
#' \item{OD280_OD315}{}
#' \item{Proline}{}
#' }
#'
#' @examples
#' Wine
"Wine"
