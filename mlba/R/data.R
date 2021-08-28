# Run devtools::document()

#' accidents
#'
#' Cleaned up and reduced version of the \code{\link{accidentsFull}} dataset
#' to facilitate model building.
#'
#' Data
#' @format A data frame with 600 observations and 11 variables:
#' \describe{
#' \item{RushHour}{1 = rush hour, 0 = not (rush = 6-9 am, 4-7 pm)}
#' \item{WRK_ZONE}{1 = yes, 0 = no}
#' \item{WKDY}{1 = weekday, 0 = weekend}
#' \item{INT_HWY}{Interstate? 1 = yes, 0 = no}
#' \item{LGTCON_day}{Light conditions - 1 = day, 0 = other}
#' \item{LEVEL}{1 = level, 0 = other}
#' \item{SPD_LIM}{Speed limit, miles per hour}
#' \item{SUR_COND_dry}{Surface conditions (1 = dry, 0 = other)}
#' \item{TRAF_two_way}{1 = two-way traffic, 0 = other}
#' \item{WEATHER_adverse}{0 = no adverse conditions, 1 = adverse condition}
#' \item{MAX_SEV}{one of: "no-injury", "non-fatal", 2 = "fatal"}
#' }
#'
#' @seealso \code{\link{accidentsFull}} for the original dataset
#'
#' @examples
#' accidents
"accidents"


#' Accidents
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
#' @source {US Dept. of Transportation, Bureau of Transportation Statistics,
#' "TranStats," (www.transtats.bts.gov -- select "databases" then "General Estimate System (GES))
#' \url{http://www.transtats.bts.gov/Fields.asp?Table_ID=1158&SYS_Table_Name=T_GES_ACCIDENT&User_Table_Name=Accident&Year_Info=1&First_Year=1999&Last_Year=2001&Rate_Info=1&Frequency=Annual&Data_Frequency=Annual,Monthly&Map_Info=&Is_Survey=1&Univ_Filter=&Latest_Available_Data=2001}}
#'
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
#' Subset of the `accidents` dataset
#'
#' Data
#' @format A data frame with 999 observations and 5 variables:
#' \describe{
#' \item{ALCHL_I}{1 = Alcohol involved, 2 = not involved}
#' \item{PROFIL_I_R}{1 = level, 0 = other}
#' \item{SUR_COND}{Surface conditions (1 = dry, 2 = wet, 3 = snow/slush, 4 = ice, 5 = sand/dirt/oil, 8 = other, 9 = unknown)}
#' \item{VEH_INVL}{Number of vehicles involved}
#' \item{MAX_SEV_IR}{0 = no injury, 1 = non-fatal inj., 2 = fatal inj.}
#' }
#'
#' @seealso \code{\link{accidentsFull}} for the full dataset
#'
#' @examples
#' head(accidentsnn)
"accidentsnn"


#' Airfares
#'
#' @format A data frame with 638 observations and 18 variables:
#' \describe{
#' \item{S_CODE}{starting airport's code}
#' \item{S_CITY}{starting city}
#' \item{E_CODE}{ending airport's code}
#' \item{E_CITY}{ending city}
#' \item{COUPON}{average number of coupons (a one-coupon flight is a non-stop flight, a two-coupon flight is a one stop flight, etc.) for that route}
#' \item{NEW}{number of new carriers entering that route between Q3-96 and Q2-97}
#' \item{VACATION}{whether a vacation route (Yes) or not (No); Florida and Las Vegas routes are generally considered vacation routes}
#' \item{SW}{whether Southwest Airlines serves that route (Yes) or not (No)}
#' \item{HI}{Herfindel Index – measure of market concentration (refer to BMGT 681)}
#' \item{S_INCOME}{starting city's average personal income}
#' \item{E_INCOME}{ending city's average personal income}
#' \item{S_POP}{starting city's population}
#' \item{E_POP}{ending city's population}
#' \item{SLOT}{whether either endpoint airport is slot controlled or not; this is a measure of airport congestion}
#' \item{GATE}{whether either endpoint airport has gate constraints or not; this is another measure of airport congestion}
#' \item{DISTANCE}{distance between two endpoint airports in miles}
#' \item{PAX}{number of passengers on that route during period of data collection}
#' \item{FARE}{average fare on that route}
#' }
#'
#' @source{Copyright 2016 Galit Shmueli and Peter Bruce}
#' @examples
#' head(Airfares)
"Airfares"


#' Banks
#'
#' Data
#' @format A data frame with 20 observations and 5 variables:
#' \describe{
#' \item{Obs}{}
#' \item{Financial.Condition}{1 = financially weak; 0 = financially strong}
#' \item{TotCap.Assets}{}
#' \item{TotExp.Assets}{}
#' \item{TotLns.Lses.Assets}{}
#' }
#'
#' @examples
#' banks
"banks"


#' Boston Housing
#'
#' This dataset contains information collected by the US Census Service concerning housing
#' in the area of Boston Massachusetts. It was obtained from the StatLib archive
#' (\url{http://lib.stat.cmu.edu/datasets/boston}).
#'
#' @format A data frame with 506 observations and 14 variables:
#' \describe{
#' \item{CRIM}{per capita crime rate by town}
#' \item{ZN}{proportion of residential land zoned for lots over 25,000 sq.ft.}
#' \item{INDUS}{proportion of non-retail business acres per town.}
#' \item{CHAS}{Charles River dummy variable (1 if tract bounds river; 0 otherwise)}
#' \item{NOX}{nitric oxides concentration (parts per 10 million)}
#' \item{RM}{average number of rooms per dwelling}
#' \item{AGE}{proportion of owner-occupied units built prior to 1940}
#' \item{DIS}{weighted distances to five Boston employment centres}
#' \item{RAD}{index of accessibility to radial highways}
#' \item{TAX}{full-value property-tax rate per $10,000}
#' \item{PTRATIO}{pupil-teacher ratio by town}
#' \item{LSTAT}{\% lower status of the population}
#' \item{MEDV}{Median value of owner-occupied homes in $1000}
#' \item{CAT.MEDV}{}
#' }
#' @source{The data was originally published by Harrison, D. and Rubinfeld, D.L.
#' 'Hedonic prices and the demand for clean air',
#' J. Environ. Economics & Management, vol.5, 81-102, 1978.}
#'
#' @examples
#' BostonHousing
"BostonHousing"


#' Cereals
#'
#' @format A data frame with 77 observations and 16 variables:
#' \describe{
#' \item{name}{Name of cereal}
#' \item{mfr}{Manufacturer of cereal where A = American Home Food Products; G = General Mills;
#'      K =Kelloggs; N = Nabisco; P = Post; Q = Quaker Oats; R = Ralston Purina}
#' \item{type}{cold or hot}
#' \item{calories}{calories per serving}
#' \item{protein}{grams of protein}
#' \item{fat}{grams of fat}
#' \item{sodium}{milligrams of sodium}
#' \item{fiber}{grams of dietary fiber}
#' \item{carbo}{grams of complex carbohydrates}
#' \item{sugars}{grams of sugars}
#' \item{potass}{milligrams of potassium}
#' \item{vitamins}{vitamins and minerals - 0, 25, or 100, indicating the typical percentage of FDA recommended}
#' \item{shelf}{display shelf (1, 2, or 3, counting from the floor)}
#' \item{weight}{weight in ounces of one serving}
#' \item{cups}{number of cups in one serving}
#' \item{rating}{a rating of the cereals calculated by Consumer Reports}
#' }
#' @source{Data analysis for student learning (DASL)}
#'
#' @examples
#' head(Cereals)
"Cereals"


#' Charles Book Club
#'
#' Data
#' @format A data frame with 4000 observations and 24 variables:
#' \describe{
#' \item{Seq.}{Sequence number in the sample}
#' \item{ID.}{ID# in the full dataset}
#' \item{Gender}{0=male, 1=female}
#' \item{M}{Monetary - total money spent on books}
#' \item{R}{Recency - Months since last purchase}
#' \item{F}{Frequency - Total number of purchases}
#' \item{FirstPurch}{Months since first purchase}
#' \item{ChildBks}{this and following - book categories}
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
#' \item{Related.Purchase}{Number of related books purchased}
#' \item{Mcode}{Recoding of M - see case description in DMBA and MLBA}
#' \item{Rcode}{Recoding of R - see case description in DMBA and MLBA}
#' \item{Fcode}{Recoding of F - see case description in DMBA and MLBA}
#' \item{Yes_Florence}{}
#' \item{No_Florence}{}
#' }
#' @source{Adapted with permission from The Bookbinders Club, prepared by Nissan Levin and Jacob Zahavi.}
#'
#' @examples
#' head(CharlesBookClub)
"CharlesBookClub"


#' Cosmetics
#'
#' A drug store chain wants to learn more about cosmetics buyers purchase patterns.
#' Specifically, they want to know what items are purchased in conjunction with each other,
#' for purposes of display, point of sale special offers, and to eventually implement
#' a real time recommender system to cross-sell items at time of purchase.
#'
#' The data (synthetic) are in the form of a matrix in which each column
#' represents a product group, and each row a customer transaction.
#'
#' Data
#' @format A data frame with 1000 observations and 15 variables:
#' \describe{
#' \item{Trans.}{Transaction #}
#' \item{Bag}{}
#' \item{Blush}{}
#' \item{Nail.Polish}{}
#' \item{Brushes}{}
#' \item{Concealer}{}
#' \item{Eyebrow.Pencils}{}
#' \item{Bronzer}{}
#' \item{Lip.liner}{}
#' \item{Mascara}{}
#' \item{Eye.shadow}{}
#' \item{Foundation}{}
#' \item{Lip.Gloss}{}
#' \item{Lipstick}{}
#' \item{Eyeliner}{}
#' }
#' @source{statistics.com; Copyright 2016 Galit Shmueli and Peter Bruce}
#'
#' @examples
#' head(Cosmetics)
"Cosmetics"


#' Course Rating
#'
#' Student ratings of online statistics courses at Statistics.com
#'
#' @format A data frame with 15 observations and 10 variables:
#' \describe{
#' \item{X}{}
#' \item{SQL}{}
#' \item{Spatial}{}
#' \item{PA1}{}
#' \item{DM.in.R}{}
#' \item{Python}{}
#' \item{Forecast}{}
#' \item{R.Prog}{}
#' \item{Hadoop}{}
#' \item{Regression}{}
#' }
#' @source{Copyright 2016 statistics.com}
#'
#' @examples
#' head(courserating)
"courserating"


#' Coursetopics
#'
#' Course topics at statistics.com (each row is a customer, column heads are
#' topics taken [1] or not taken [0] by that customer)
#'
#' @format A data frame with 365 observations and 8 variables:
#' \describe{
#' \item{Intro}{}
#' \item{DataMining}{}
#' \item{Survey}{}
#' \item{Cat.Data}{}
#' \item{Regression}{}
#' \item{Forecast}{}
#' \item{DOE}{}
#' \item{SW}{}
#' }
#' @source{Copyright 2016 statistics.com}
#'
#' @examples
#' head(Coursetopics)
"Coursetopics"


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


#' EastWestAirlinesCluster
#'
#' East-West Airlines is trying to learn more about its customers.  Key issues
#' are their flying patterns, earning and use of frequent flyer rewards, and
#' use of the airline credit card.  The task is to identify customer segments
#' via clustering.
#'
#' @format A data frame with 3999 observations and 12 variables:
#' \describe{
#' \item{ID.}{Unique ID}
#' \item{Balance}{Number of miles eligible for award travel}
#' \item{Qual_miles}{Number of miles counted as qualifying for Topflight status}
#' \item{cc1_miles}{Number of miles earned with freq. flyer credit card in the past 12 months:
#' 1 = under 5,000; 2 = 5,000 - 10,000; 3 = 10,001 - 25,000; 4 = 25,001 - 50,000;
#' 5 = over 50,000}
#' \item{cc2_miles}{Number of miles earned with Rewards credit card in the past 12 months (see cc1_miles)}
#' \item{cc3_miles}{Number of miles earned with Small Business credit card in the past 12 months (see cc1_miles)}
#' \item{Bonus_miles}{Number of miles earned from non-flight bonus transactions in the past 12 months}
#' \item{Bonus_trans}{Number of non-flight bonus transactions in the past 12 months}
#' \item{Flight_miles_12mo}{Number of flight miles in the past 12 months}
#' \item{Flight_trans_12}{Number of flight transactions in the past 12 months}
#' \item{Days_since_enroll}{Number of days since Enroll_date}
#' \item{Award.}{Dummy variable for Last_award (1=not null, 0=null)}
#' }
#' @source{Based upon real business data; company names have been changed.
#' Copyright 2016 Galit Shmueli and Peter Bruce}
#'
#' @examples
#' head(EastWestAirlinesCluster)
"EastWestAirlinesCluster"


#' EastWestAirlinesNN
#'
#' East-West Airlines has entered into a partnership with the wireless phone company
#' Telcom to sell the latter's service via direct mail.  These are a sample of data,
#' provided so that the analyst can develop a model to classify East-West customers
#' as to whether they purchase a wireless phone service contract (target variable
#' `Phone_sale`).
#'
#' @format A data frame with 4987 observations and 16 variables:
#' \describe{
#' \item{ID.}{Unique ID}
#' \item{Topflight}{}
#' \item{Balance}{Number of miles eligible for award travel}
#' \item{Qual_miles}{Number of miles counted as qualifying for Topflight status}
#' \item{cc1_miles}{Number of miles earned with freq. flyer credit card in the past 12 months:
#' 1 = under 5,000; 2 = 5,000 - 10,000; 3 = 10,001 - 25,000; 4 = 25,001 - 50,000;
#' 5 = over 50,000}
#' \item{cc2_miles}{Number of miles earned with Rewards credit card in the past 12 months (see cc1_miles)}
#' \item{cc3_miles}{Number of miles earned with Small Business credit card in the past 12 months (see cc1_miles)}
#' \item{Bonus_miles}{Number of miles earned from non-flight bonus transactions in the past 12 months}
#' \item{Bonus_trans}{Number of non-flight bonus transactions in the past 12 months}
#' \item{Flight_miles_12mo}{Number of flight miles in the past 12 months}
#' \item{Flight_trans_12}{Number of flight transactions in the past 12 months}
#' \item{Online_12}{}
#' \item{Email}{E-mail address on file. 1= yes, 0 =no?}
#' \item{Club_member}{Member of the airline's club (paid membership), 1=yes, 0=no}
#' \item{Any_cc_miles_12mo}{Dummy variable indicating whether member added miles on
#' any creditcard type within the past 12 months (1='Y', 0='N')}
#' \item{Phone_sale}{Dummy variable indicating whether member purchased Telcom service
#' as a result of the direct mail campaign (1=sale, 0=no sale)}
#' }
#' @source{Based upon real business data; company names have been changed.
#' Copyright 2016 Galit Shmueli and Peter Bruce}
#'
#' @examples
#' head(EastWestAirlinesNN)
"EastWestAirlinesNN"


#' ebay Auctions
#'
#' Data
#' @format A data frame with 1972 observations and 8 variables:
#' \describe{
#' \item{Category}{Category of the auctioned item.}
#' \item{currency}{}
#' \item{sellerRating}{a rating by eBay, as a function of the number of "good"
#' and "bad" transactions the seller had on eBay.}
#' \item{Duration}{Number of days the auction lasted (set by seller at auction start)}
#' \item{endDay}{Day of week that the auction closed}
#' \item{ClosePrice}{Price item sold at (converted into USD)}
#' \item{OpenPrice}{Initial price set by the seller (converted into USD)}
#' \item{Competitive.}{whether the auction had a single bid (0) or more (1)}
#' }
#' @source{Copyright 2016 Galit Shmueli and Peter Bruce}
#'
#' @examples
#' eBayAuctions
"eBayAuctions"


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
#' Synthetic Data on Purchases of Phone Faceplates.
#'
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
#' @source{Copyright 2016 Galit Shmueli and Peter Bruce}
#'
#' @examples
#' Faceplate
"Faceplate"


#' FarmAds
#'
#' Data on advertisements posted at a website that caters to the needs of
#' a specific farming community. Each ad is in a row, and each ad labeled
#' as either −1 (not relevant) or 1 (relevant). The goal is to develop a
#' predictive model that can classify ads automatically.
#'
#' Data
#' @format A data frame with 4143 observations and 2 variables:
#' \describe{
#' \item{label}{1: ad is relevant; -1 ad is not relevant}
#' \item{text}{}
#' }
#'
#' @examples
#' FarmAds
"FarmAds"


#' Flight delays
#'
#' All flights in January 2004 out of 3 DC airports (WAS) into 3 NYC airports.
#' Flights not cancelled
#'
#' @format A data frame with 2201 observations and 13 variables:
#' \describe{
#' \item{CRS_DEP_TIME}{scheduled departure time}
#' \item{CARRIER}{The airline. AA=American Airlines, Inc.;
#' CO=Continental Air Lines, Inc.; DH=Atlantic Coast Airlines;
#' DL=Delta Air Lines, Inc.; EV=Atlantic Southeast Airlines;
#' FL=Airtran Airways Corporation; MQ=American Eagle Airlines,inc;
#' OH=Comair, Inc.; RU=Continental Express Airline;
#' UA=United Air Lines, Inc.; US=US Airways, Inc.}
#' \item{DEP_TIME}{Actual departure time}
#' \item{DEST}{Destination airport in NY: Kennedy (JFK), LaGuardia (LGA), Newark (EWR)}
#' \item{DISTANCE}{Flight distance in miles}
#' \item{FL_DATE}{Flight date}
#' \item{FL_NUM}{Flight number}
#' \item{ORIGIN}{Departure airport in Washingon DC: National (DCA),
#' Baltimore-Washington (BWI), Dulles (IAD)}
#' \item{Weather}{Whether the weather was inclement (1) or not (0)}
#' \item{DAY_WEEK}{Day of week. 1=Mon, 2=Tues...}
#' \item{DAY_OF_MONTH}{}
#' \item{TAIL_NUM}{This number is airplane specific}
#' \item{Flight.Status}{Whether the flight was delayed or on time (defined as
#' arriving within 15 min of scheduled time)}
#' }
#' @source{Bureau of Transportation Statistics}
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
#' \item{GDP2015}{Gross domestic product of the countries.}
#' }
#' @source{Data from Veenhoven's world database of happiness.
#' \url{http://data.worldbank.org/indicator/NY.GDP.MKTP.CD}.
#' World Development Indicators.  }
#'
#' @examples
#' head(gdp)
"gdp"


#' German credit
#'
#' Data
#' @format A data frame with 1000 observations and 32 variables:
#' \describe{
#' \item{OBS.}{Observation No.}
#' \item{CHK_ACCT}{Checking account status. 0: < 0 DM; 1: 0 <...< 200 DM;
#' 2: => 200 DM; 3:  no checking account}
#' \item{DURATION}{Duration of credit in months}
#' \item{HISTORY}{Credit history. 0: no credits taken;
#' 1: all credits at this bank paid back duly;
#' 2: existing credits paid back duly till now;
#' 3: delay in paying off in the past;
#' 4: critical account}
#' \item{NEW_CAR}{Purpose of credit. car (new) 0: No, 1: Yes}
#' \item{USED_CAR}{Purpose of credit. car (used) 0: No, 1: Yes}
#' \item{FURNITURE}{Purpose of credit. furniture/equipment 0: No, 1: Yes}
#' \item{RADIO.TV}{Purpose of credit. radio/television 0: No, 1: Yes}
#' \item{EDUCATION}{Purpose of credit. education 0: No, 1: Yes}
#' \item{RETRAINING}{Purpose of credit. retraining 0: No, 1: Yes}
#' \item{AMOUNT}{Credit amount}
#' \item{SAV_ACCT}{Average balance in savings account.
#' 0 : <  100 DM;
#' 1 : 100 <=...<  500 DM;
#' 2 : 500 <=...< 1000 DM;
#' 3 : =>1000 DM;
#' 4 : unknown/ no savings account}
#' \item{EMPLOYMENT}{Present employment since.
#' 0 : unemployed;
#' 1 :  < 1 year;
#' 2 : 1 <= ... < 4 years
#' 3 : 4 <=... < 7 years
#' 4 : >= 7 years}
#' \item{INSTALL_RATE}{Installment rate as \% of disposable income}
#' \item{MALE_DIV}{Applicant is male and divorced. 0: No, 1: Yes}
#' \item{MALE_SINGLE}{Applicant is male and single. 0: No, 1: Yes}
#' \item{MALE_MAR_or_WID}{Applicant is male and married or a widower. 0: No, 1: Yes}
#' \item{CO.APPLICANT}{Application has a co-applicant. 0: No, 1: Yes}
#' \item{GUARANTOR}{Applicant has a guarantor. 0: No, 1: Yes}
#' \item{PRESENT_RESIDENT}{Present resident since-years.
#' 0: <= 1 year;
#' 1: <…<= 2 years;
#' 2: <…<= 3 years;
#' 3: >4years}
#' \item{REAL_ESTATE}{Applicant owns real estate. 0: No, 1: Yes}
#' \item{PROP_UNKN_NONE}{Applicant owns no property (or unknown). 0: No, 1: Yes}
#' \item{AGE}{Age in years}
#' \item{OTHER_INSTALL}{Applicant has other installment plan credit. 0: No, 1: Yes}
#' \item{RENT}{Applicant rents. 0: No, 1: Yes}
#' \item{OWN_RES}{Applicant owns residence. 0: No, 1: Yes}
#' \item{NUM_CREDITS}{Number of existing credits at this bank}
#' \item{JOB}{Nature of job.
#' 0: unemployed/ unskilled  - non-resident;
#' 1: unskilled - resident;
#' 2: skilled employee / official;
#' 3: management/ self-employed/highly qualified employee/ officer}
#' \item{NUM_DEPENDENTS}{Number of people for whom liable to provide maintenance}
#' \item{TELEPHONE}{Applicant has phone in his or her name. 0: No, 1: Yes}
#' \item{FOREIGN}{Foreign worker. 0: No, 1: Yes}
#' \item{RESPONSE}{Credit rating is good. 0: No, 1: Yes}
#' }
#'
#' @examples
#' head(GermanCredit)
"GermanCredit"


#' Hair Care Product
#'
#' @description{
#' Fictional data representing an uplift study. A promotion for a hair
#' color product was sent out to a sample of potential customers.
#'
#' Promotional literature about a hair care product was sent to members
#' of a buyers club. The goal is to determine which groups are most likely
#' to make increased purchases as a result of receiving the promotion.
#' }
#'
#' @format A data frame with 10000 observations and 8 variables:
#' \describe{
#' \item{Purchase}{1: purchased; 0: not purchased}
#' \item{Age}{age of customer}
#' \item{Hair.Color}{one of `Black`, `Red`, `Blond`, or `Brown`}
#' \item{U.S..Region}{one of `Southwest`, `Northwest`, `Northeast`, or `Southeast`}
#' \item{Validation}{0: training set; 1: validation set}
#' \item{Promotion_ord}{1: customer received a promotion; 0: did'n receive promotional material}
#' \item{Gender_ord}{1: male; 0: female}
#' \item{Residence_ord}{1: urban; 0: rural}
#' }
#' @source{SAS Institute, used by permission; sample of 10,000 observations from full 126,184 dataset}
#'
#' @examples
#' head(HairCareProduct)
"HairCareProduct"

#' Laptop Sales
#'
#' @description{The laptop sales data were part of the ENBIS 2009 Challenge in
#' Industrial Statistics.}
#'
#' Data
#' @format A data frame with 7956 observations and 17 variables:
#' \describe{
#' \item{Date}{purchase date}
#' \item{Configuration}{A numerical code representing a combination of screen
#' size, battery life, RAM, etc. Each code corresponds to a particular combination.}
#' \item{Retail.Price}{price of laptop in GBP}
#' \item{Screen.Size..Inches.}{screen size of laptop (Inches)}
#' \item{Battery.Life..Hours.}{battery life of laptop (Hours)}
#' \item{RAM..GB.}{RAM size of laptop(GB)}
#' \item{Processor.Speeds..GHz.}{processor speed of laptop (GHz)}
#' \item{Integrated.Wireless.}{whether the laptop has integrated wireless or not}
#' \item{HD.Size..GB.}{HD size of laptop (GB)}
#' \item{Bundled.Applications.}{whether the laptop comes with bundled applications or not}
#' \item{Customer.Postcode}{postcode in London of the customer}
#' \item{Store.Postcode}{postcode in London of the store}
#' \item{customer.X}{X geo coordinates for customer location.}
#' \item{customer.Y}{Y geo coordinates for customer location.}
#' \item{store.X}{X geo coordinates for store location}
#' \item{store.Y}{Y geo coordinates for store location}
#' }
#' @source{The laptop sales data were part of the ENBIS 2009 Challenge
#' in Industrial Statistics}
#'
#' @seealso \code{\link{LaptopSalesJanuary2008}} for a subset of this dataset
#'
#' @examples
#' head(LaptopSales)
"LaptopSales"


#' Laptop Sales January 2008
#'
#' @description{The laptop sales data were part of the ENBIS 2009 Challenge in
#' Industrial Statistics.
#'
#' This is a subset of the Laptop sales dataset. It includes only the Jan 2008
#' sales (the complete dataset includes the entire 2008 sales).}
#'
#' Data
#' @format A data frame with 7956 observations and 17 variables:
#' \describe{
#' \item{Date}{purchase date}
#' \item{Configuration}{A numerical code representing a combination of screen
#' size, battery life, RAM, etc. Each code corresponds to a particular combination.}
#' \item{Customer.Postcode}{postcode in London of the customer}
#' \item{Store.Postcode}{postcode in London of the store}
#' \item{Retail.Price}{price of laptop in GBP}
#' \item{Screen.Size..Inches.}{screen size of laptop (Inches)}
#' \item{Battery.Life..Hours.}{battery life of laptop (Hours)}
#' \item{RAM..GB.}{RAM size of laptop(GB)}
#' \item{Processor.Speeds..GHz.}{processor speed of laptop (GHz)}
#' \item{Integrated.Wireless.}{whether the laptop has integrated wireless or not}
#' \item{HD.Size..GB.}{HD size of laptop (GB)}
#' \item{Bundled.Applications.}{whether the laptop comes with bundled applications or not}
#' \item{OS.X.Customer}{X geo coordinates for customer location.}
#' \item{OS.Y.Customer}{Y geo coordinates for customer location.}
#' \item{OS.X.Store}{X geo coordinates for store location}
#' \item{OS.Y.Store}{Y geo coordinates for store location}
#' \item{CustomerStoreDistance}{}
#' }
#' @source{The laptop sales data were part of the ENBIS 2009 Challenge
#' in Industrial Statistics}
#'
#' @seealso \code{\link{LaptopSales}} for the full dataset
#'
#' @examples
#' head(LaptopSalesJanuary2008)
"LaptopSalesJanuary2008"


#' Lift example
#'
#' @description{Synthetic dataset to demonstrate lift}
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


#' Pharmaceuticals
#'
#' Data
#' @format A data frame with 21 observations and 14 variables:
#' \describe{
#' \item{Symbol}{}
#' \item{Name}{}
#' \item{Market_Cap}{}
#' \item{Beta}{}
#' \item{PE_Ratio}{}
#' \item{ROE}{}
#' \item{ROA}{}
#' \item{Asset_Turnover}{}
#' \item{Leverage}{}
#' \item{Rev_Growth}{}
#' \item{Net_Profit_Margin}{}
#' \item{Median_Recommendation}{}
#' \item{Location}{}
#' \item{Exchange}{}
#' }
#' @source{Compiled from various web sources. Copyright 2016 Galit Shmueli and Peter Bruce}
#'
#' @examples
#' head(Pharmaceuticals)
"Pharmaceuticals"


#' Riding Mowers
#'
#' Data
#' @format A data frame with 24 observations and 3 variables:
#' \describe{
#' \item{Income}{Annual income in $000}
#' \item{Lot_Size}{In thousands of sq. feet}
#' \item{Ownership}{Whether the resident owns a riding mower or not}
#' }
#' @source{Data courtesy of Dean Wichern}
#'
#' @examples
#' head(RidingMowers)
"RidingMowers"


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


#' Spambase
#'
#' @description{ Each of the words below are columns in the data and the values represent
#' \% of words in the e-mail that match that particular word. For example,
#' make represent \% of words in the e-mail that match "make".}
#'
#' @format A data frame with 4601 observations and 58 variables:
#' \describe{
#' \item{make}{}
#' \item{address}{}
#' \item{all}{}
#' \item{W_3d}{}
#' \item{our}{}
#' \item{over}{}
#' \item{remove}{}
#' \item{internet}{}
#' \item{order}{}
#' \item{mail}{}
#' \item{receive}{}
#' \item{will}{}
#' \item{people}{}
#' \item{report}{}
#' \item{addresses}{}
#' \item{free}{}
#' \item{business}{}
#' \item{email}{}
#' \item{you}{}
#' \item{credit}{}
#' \item{your}{}
#' \item{font}{}
#' \item{W_000}{}
#' \item{money}{}
#' \item{hp}{}
#' \item{hpl}{}
#' \item{george}{}
#' \item{W_650}{}
#' \item{lab}{}
#' \item{labs}{}
#' \item{telnet}{}
#' \item{W_857}{}
#' \item{data}{}
#' \item{W_415}{}
#' \item{W_85}{}
#' \item{technology}{}
#' \item{W_1999}{}
#' \item{parts}{}
#' \item{pm}{}
#' \item{direct}{}
#' \item{cs}{}
#' \item{meeting}{}
#' \item{original}{}
#' \item{project}{}
#' \item{re.}{}
#' \item{edu}{}
#' \item{table}{}
#' \item{conference}{}
#' \item{C.}{C;}
#' \item{C..1}{C(}
#' \item{C..2}{C[}
#' \item{C..3}{C!}
#' \item{C..4}{C$}
#' \item{C..5}{C#}
#' \item{CAP_avg}{average length of uninterrupted sequences of capital letters}
#' \item{CAP_long}{length of longest uninterrupted sequence of capital letters}
#' \item{CAP_tot}{total number of capital letters in the e-mail}
#' \item{Spam}{1 = spam, 0 = not spam}
#' }
#'
#' @examples
#' head(spambase)
"spambase"


#' System Administrator
#'
#' Data
#' @format A data frame with 75 observations and 3 variables:
#' \describe{
#' \item{Experience}{measures months of full-time system administrator experience}
#' \item{Training}{measures the number of relevant training credits}
#' \item{Completed.task}{either Yes or No, according to whether or not the
#' administrator completed the tasks}
#' }
#' @source{Samprit Chatterjee}
#'
#' @examples
#' head(SystemAdministrators)
"SystemAdministrators"


#' Taxi Cancellation Case
#'
#' @description{The data are a randomly selected subset of the original
#' data, with 10,000 rows, one row for each booking of a taxi. There are
#' 17 input variables, including user (customer) ID, vehicle model,
#' whether the booking was made online or via a mobile app, type of travel,
#' type of booking package, geographic information, and the date and
#' time of the scheduled trip. The target variable of interest is the
#' binary indicator of whether a ride was canceled.}
#'
#' @format A data frame with 10000 observations and 19 variables:
#' \describe{
#' \item{row.}{}
#' \item{user_id}{}
#' \item{vehicle_model_id}{}
#' \item{package_id}{}
#' \item{travel_type_id}{}
#' \item{from_area_id}{}
#' \item{to_area_id}{}
#' \item{from_city_id}{}
#' \item{to_city_id}{}
#' \item{from_date}{}
#' \item{to_date}{}
#' \item{online_booking}{}
#' \item{mobile_site_booking}{}
#' \item{booking_created}{}
#' \item{from_lat}{}
#' \item{from_long}{}
#' \item{to_lat}{}
#' \item{to_long}{}
#' \item{Car_Cancellation}{}
#' }
#' @source{Copyright 2016 statistics.com}
#'
#' @examples
#' head(TaxiCancellationCase)
"TaxiCancellationCase"


#' Tayko
#'
#' Data
#' @format A data frame with 2000 observations and 25 variables:
#' \describe{
#' \item{sequence_number}{Unique identifier}
#' \item{US}{Is it a US address? 1=yes; 0=no}
#' \item{source_a}{Source catalog for the record. 1=yes; 0=no
#'
#' (15 identified sources plus one "other source" category; 15 dummies created
#' with "other" as the reference, hence omitted.)}
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
#' \item{Freq}{Number of transactions in last year at source catalog}
#' \item{last_update_days_ago}{How many days ago was last update to customer record}
#' \item{X1st_update_days_ago}{How many days ago was 1st update to customer record}
#' \item{Web.order}{Customer placed at least 1 order via web. 1=yes; 0=no}
#' \item{Gender.male}{Customer is male. 1=yes; 0=no}
#' \item{Address_is_res}{Address is a residence. 1=yes; 0=no}
#' \item{Purchase}{Person made purchase in test mailing. 1=yes; 0=no}
#' \item{Spending}{Amount spent by customer intest mailing ($)}
#' }
#' @source{Copyright 2016 statistics.com}
#'
#' @examples
#' head(Tayko)
"Tayko"


#' TinyData
#'
#' @description{Data includes information on a tasting score for a certain
#' processed cheese. The two predictors are scores for fat and salt,
#' indicating the relative presence of fat and salt in the particular cheese
#' sample (where 0 is the minimum amount possible in the manufacturing process,
#' and 1 the maximum). The outcome variable is the cheese sample’s consumer
#' taste preference, where like or dislike indicate whether the consumer likes the cheese or not.}
#' Data
#' @format A data frame with 6 observations and 4 variables:
#' \describe{
#' \item{Obs.}{unique identifier}
#' \item{Fat}{relative presence of fat in cheese. (where 0 is the minimum amount possible in the manufacturing process, and 1 the maximum)}
#' \item{Salt}{relative presence of salt in cheese. (where 0 is the minimum amount possible in the manufacturing process, and 1 the maximum)}
#' \item{Acceptance}{Consumer taste preference; one of `like` or `dislike`}
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
#' \item{Id}{Record_ID; unique identifier}
#' \item{Model}{Model Description}
#' \item{Price}{Offer Price in EUROs}
#' \item{Age_08_04}{Age in months as in August 2004}
#' \item{Mfg_Month}{Manufacturing month (1-12)}
#' \item{Mfg_Year}{Manufacturing year}
#' \item{KM}{Accumulated Kilometers on odometer}
#' \item{Fuel_Type}{Fuel Type. one of `Petrol`, `Diesel`, or `CNG`}
#' \item{HP}{Horse Power}
#' \item{Met_Color}{Metallic Color?  (Yes=1, No=0)}
#' \item{Color}{Color (Blue, Red, Grey, Silver, Black, etc.)}
#' \item{Automatic}{Automatic (Yes=1, No=0)}
#' \item{CC}{Cylinder Volume in cubic centimeters}
#' \item{Doors}{Number of doors}
#' \item{Cylinders}{Number of cylinders}
#' \item{Gears}{Number of gear positions}
#' \item{Quarterly_Tax}{Quarterly road tax in EUROs}
#' \item{Weight}{Weight in Kilograms}
#' \item{Mfr_Guarantee}{Within Manufacturer's Guarantee period  (Yes=1, No=0)}
#' \item{BOVAG_Guarantee}{BOVAG (Dutch dealer network) Guarantee  (Yes=1, No=0)}
#' \item{Guarantee_Period}{Guarantee period in months}
#' \item{ABS}{Anti-Lock Brake System (Yes=1, No=0)}
#' \item{Airbag_1}{Driver_Airbag  (Yes=1, No=0)}
#' \item{Airbag_2}{Passenger Airbag  (Yes=1, No=0)}
#' \item{Airco}{Airconditioning  (Yes=1, No=0)}
#' \item{Automatic_airco}{Automatic Airconditioning  (Yes=1, No=0)}
#' \item{Boardcomputer}{Boardcomputer  (Yes=1, No=0)}
#' \item{CD_Player}{CD Player  (Yes=1, No=0)}
#' \item{Central_Lock}{Central Lock  (Yes=1, No=0)}
#' \item{Powered_Windows}{Powered Windows  (Yes=1, No=0)}
#' \item{Power_Steering}{Power Steering  (Yes=1, No=0)}
#' \item{Radio}{Radio  (Yes=1, No=0)}
#' \item{Mistlamps}{Mistlamps  (Yes=1, No=0)}
#' \item{Sport_Model}{Sport Model  (Yes=1, No=0)}
#' \item{Backseat_Divider}{Backseat Divider  (Yes=1, No=0)}
#' \item{Metallic_Rim}{Metallic Rim  (Yes=1, No=0)}
#' \item{Radio_cassette}{Radio Cassette  (Yes=1, No=0)}
#' \item{Parking_Assistant}{Parking assistance system  (Yes=1, No=0)}
#' \item{Tow_Bar}{Tow Bar  (Yes=1, No=0)}
#' }
#' @source{Copyright 2016 Nitin Patel, Galit Shmueli and Peter Bruce   }
#'
#' @examples
#' head(ToyotaCorolla)
"ToyotaCorolla"


#' UniversalBank
#'
#' @description{Synthetic dataset courtesy of \url{statistics.com}}
#'
#' @format A data frame with 500 observations and 14 variables:
#' \describe{
#' \item{ID}{Customer ID}
#' \item{Age}{Customer's age in completed years}
#' \item{Experience}{#years of professional experience}
#' \item{Income}{Annual income of the customer ($000)}
#' \item{ZIP.Code}{Home Address ZIP code}
#' \item{Family}{Family size of the customer}
#' \item{CCAvg}{Avg. spending on credit cards per month ($000)}
#' \item{Education}{Education Level. 1: Undergrad; 2: Graduate; 3: Advanced/Professional}
#' \item{Mortgage}{Value of house mortgage if any. ($000)}
#' \item{Personal.Loan}{Did this customer accept the personal loan offered in the last campaign?}
#' \item{Securities.Account}{Does the customer have a securities account with the bank?}
#' \item{CD.Account}{Does the customer have a certificate of deposit (CD) account with the bank?}
#' \item{Online}{Does the customer use internet banking facilities?}
#' \item{CreditCard}{Does the customer use a credit card issued by UniversalBank?}
#' }
#' @source{Copyright Cytel, Inc. 2005}
#'
#' @examples
#' UniversalBank
"UniversalBank"


#' Universities
#'
#' @description{The dataset on American college and university rankings contains
#' information on 1302 American colleges and universities oﬀering an undergraduate
#' program. For each university, there are 17 measurements that include
#' continuous measurements (such as tuition and graduation rate) and categorical
#' measurements (such as location by state and whether it is a private or a public school).}
#'
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
#' @source{Copyright 2016 Galit Shmueli and Peter Bruce. Compiled from US News and
#' World Report rankings on 1302American Colleges and Universities}
#'
#' @examples
#' head(Universities)
"Universities"


#' Utilities
#'
#' Data
#' @format A data frame with 22 observations and 9 variables:
#' \describe{
#' \item{Company}{Company name}
#' \item{Fixed_charge}{Fixed-charge coverage ratio (income/debt)}
#' \item{RoR}{Percent rate of return on capital}
#' \item{Cost}{Cost per KW capacity in place}
#' \item{Load_factor}{Annual load factor}
#' \item{Demand_growth}{Percent demand growth}
#' \item{Sales}{Sales (KWH use per year)}
#' \item{Nuclear}{Percent nuclear}
#' \item{Fuel_Cost}{Total fuel costs (cents per KWH)}
#' }
#'
#' @examples
#' Utilities
"Utilities"


#' Veerhoven.
#'
#' @description{Data measuring happiness of countries. according to a 2006 Gallup survey.}
#'
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
#' \item{VOTER_ID}{Unique ID for each voter}
#' \item{SET_NO}{Set number, assigned at random.  Can be used to divide development and
#' test sets.  Build models using only sets 1 & 2.  Validate on the hold-out
#' sample of set_no=3 voters}
#' \item{OPP_SEX}{\% of people with the same first name who have a different gender (Derived)}
#' \item{AGE}{Age (Voterfile)}
#' \item{HH_ND}{Number of Democrats in this household (Derived)}
#' \item{HH_NR}{Number of Republicans in this household (Derived)}
#' \item{HH_NI}{Number of independents in this household (Derived)}
#' \item{MED_AGE}{Census Block Group median age (Census)}
#' \item{NH_WHITE}{\% Non-Hispanic Caucasian (Census)}
#' \item{NH_AA}{\% Non-Hispanic African-American (Census)}
#' \item{NH_ASIAN}{\% Non-Hispanic Asian (Census)}
#' \item{NH_MULT}{\% Non-Hispanic multi-race (Census)}
#' \item{HISP}{\% Hispanic (Census)}
#' \item{COMM_LT10}{\% of workers who commute less than 10 minutes each way (Census)}
#' \item{COMM_609P}{\% of workers who commute 60+ minutes each way (Census)}
#' \item{MED_HH_INC}{Median household income (Census)}
#' \item{COMM_CAR}{\% of workers who commute by themselves by car (Census)}
#' \item{COMM_CP}{\% of workers who carpool (Census)}
#' \item{COMM_PT}{\% of workers who take public transportation (Census)}
#' \item{COMM_WALK}{\% of workers who walk to work (Census)}
#' \item{KIDS}{\% of families with children under 18 (Census)}
#' \item{M_MAR}{\% of adult men who are married (Census)}
#' \item{F_MAR}{\% of adult females who are married (Census)}
#' \item{ED_4COL}{\% of adult population with at least 4 years of college (Census)}
#' \item{GENDER_F}{Flag - is female (Voterfile)}
#' \item{GENDER_M}{Flag - is male (Voterfile)}
#' \item{H_AFDLN3P}{Flag - household all-female different last names, 3+ members (Derived)}
#' \item{H_F1}{Flag - household single female (Derived)}
#' \item{H_M1}{Flag - Single male (Derived)}
#' \item{H_MFDLN3P}{Flag - household male & female, different last names, 3+ members (Derived)}
#' \item{PARTY_D}{Flag - Democrat (Voterfile)}
#' \item{PARTY_I}{Flag - Independent (Voterfile)}
#' \item{PARTY_R}{Flag - Republican (Voterfile)}
#' \item{VPP_08}{Flag - vote history - voted presidential primary 2008 (Derived)}
#' \item{VPP_12}{Flag - vote history - voted presidential primary 2012 (Derived)}
#' \item{VPR_08}{Flag - vote history - voted primary 2008 (Derived)}
#' \item{VPR_10}{Flag - vote history - voted primary 2010 (Derived)}
#' \item{VPR_12}{Flag - vote history - voted primary 2012 (Derived)}
#' \item{VG_04}{Flag - vote history - voted general election 2004 (Derived)}
#' \item{VG_06}{Flag - vote history - voted general election 2006 (Derived)}
#' \item{VG_08}{Flag - vote history - voted general election 2008 (Derived)}
#' \item{VG_10}{Flag - vote history - voted general election 2010 (Derived)}
#' \item{VG_12}{Flag - vote history - voted general election 2012 (Derived)}
#' \item{PP_PELIG}{Voted in \% of presidential primaries in which they were eligible (Derived)}
#' \item{PR_PELIG}{Voted in \% of non-presidential primaries in which they were eligible (Derived)}
#' \item{AP_PELIG}{Voted in \% of any kind of primary in which they were eligible (Derived)}
#' \item{G_PELIG}{Voted in \% of general elections in which they were eligible (Derived)}
#' \item{E_PELIG}{Voted in \% of any kind of election in which they were eligible (Derived)}
#' \item{NL5G}{# of the last 5 elections in which the voter voted (Derived)}
#' \item{NL3PR}{# of last 3 primaries in which the voter voted (Derived)}
#' \item{NL5AP}{# of last 5 primaries of any kind in which the voter voted (Derived)}
#' \item{NL2PP}{# of last 2 presidential primaries in which the voter voted (Derived)}
#' \item{REG_DAYS}{Days since the voter registered to vote at their current address (Derived)}
#' \item{UPSCALEBUY}{Upscale Buyer In Home (Commercial Data)}
#' \item{UPSCALEMAL}{Upscale Male Buyer In Home (Commercial Data)}
#' \item{UPSCALEFEM}{Upscale Female Buyer In Home (Commercial Data)}
#' \item{BOOKBUYERI}{Book Buyer In Home (Commercial Data)}
#' \item{FAMILYMAGA}{Family Magazine In Home (Commercial Data)}
#' \item{FEMALEORIE}{Female Oriented Magazine In Home (Commercial Data)}
#' \item{RELIGIOUSM}{Religious Magazine In Home (Commercial Data)}
#' \item{GARDENINGM}{Gardening Magazine In Home (Commercial Data)}
#' \item{CULINARYIN}{Culinary Interest Magazine In Home (Commercial Data)}
#' \item{HEALTHFITN}{Health Fitness Magazine In Home (Commercial Data)}
#' \item{DOITYOURSE}{Do It Yourselfer Magazine In Home (Commercial Data)}
#' \item{FINANCIALM}{Financial Magazine In Home (Commercial Data)}
#' \item{RELIGIOUSC}{Religious Contributor In Home (Commercial Data)}
#' \item{POLITICALC}{Political Contributer In Home (Commercial Data)}
#' \item{MEDIANEDUC}{Median Education Years (Commercial Data)}
#' \item{CAND1S}{Wave 1 candidate ID with strenght of support.
#' SD=Strong Democrat, LD=Lean Democrat, U=Undecided,
#' LR=Lean Republican, SR=Strong Republican (Synthetic)}
#' \item{CAND2S}{Wave 2 candidate ID with strenght of support (Synthetic)}
#' \item{MESSAGE_A}{Flag indicating if the voter received message A (Synthetic)}
#' \item{MESSAGE_A_REV}{Flag indicating if the voter received message B (Synthetic)}
#' \item{I3}{Independent 3-way.  Y if voter is an independent or minor party member.
#'    N if Democrat or Republican}
#' \item{CAND1_UND}{Undecided in wave 1 IDs}
#' \item{CAND2_UND}{Undecided in wave 2 IDs}
#' \item{MOVED_AD}{Moved to be more supportive of the Democratic candidate.  Stronger support for the Democrat or weaker support for the Republican in wave 2 than in wave 1.}
#' \item{MOVED_A}{0/1 encoding of `MOVED_AD`}
#' \item{opposite}{reverse of `MOVED_AD`}
#' \item{Partition}{`V`=validation, `T`= test set}
#' }
#' @source{Copyright 2016 Ken Strasma and statistics.com; Ken Strasma and HaystaqDNA}
#'
#' @examples
#' VoterPersuasion
"VoterPersuasion"


#' West Roxbury.
#'
#' Data
#' @format A data frame with 5802 observations and 14 variables:
#' \describe{
#' \item{TOTAL.VALUE}{Total assessed value for property, in thousands of USD}
#' \item{TAX}{Tax bill amount based on total assessed value multiplied by the tax rate}
#' \item{LOT.SQFT}{Total lot size of parcel in square feet}
#' \item{YR.BUILT}{Year property was built}
#' \item{GROSS.AREA}{Gross floor area}
#' \item{LIVING.AREA}{Total living area for residential properties (in square feet)}
#' \item{FLOORS}{Number of floors}
#' \item{ROOMS}{Total number of rooms}
#' \item{BEDROOMS}{Total number of bedrooms}
#' \item{FULL.BATH}{Total number of full baths}
#' \item{HALF.BATH}{Total number of half baths}
#' \item{KITCHEN}{Total number of kitchens}
#' \item{FIREPLACE}{Total number of fireplaces}
#' \item{REMODEL}{When house was remodeled (Recent/Old/None)}
#' }
#'
#' @examples
#' WestRoxbury
"WestRoxbury"


#' Wine.
#'
#' @description{Wine dataset contains properties of wine captured from three
#' different wineries in the same region. There are 13 variables describing
#' various properties of wine and 3 classes. This dataset can be used for
#' classification with Type as a output variable OR can be used to perform
#' clustering to without using Type variable to see the accuracy of prediction.}
#'
#' Data
#' @format A data frame with 178 observations and 14 variables:
#' \describe{
#' \item{Type}{Type of wine; one of `A`, `B`, or `C`}
#' \item{Alcohol}{}
#' \item{Malic_Acid}{}
#' \item{Ash}{}
#' \item{Ash_Alcalinity}{Alcalinity of ash}
#' \item{Magnesium}{}
#' \item{Total_Phenols}{}
#' \item{Flavanoids}{}
#' \item{Nonflavanoid_Phenols}{}
#' \item{Proanthocyanins}{}
#' \item{Color_Intensity}{}
#' \item{Hue}{}
#' \item{OD280_OD315}{OD280/OD315 of diluted wines}
#' \item{Proline}{}
#' }
#' @source{This data set can be found in the UCI Machine Learning Repository
#' (\url{https://archive.ics.uci.edu/ml/datasets/wine})}
#'
#' @examples
#' Wine
"Wine"


#' Amtrak
#'
#' Data
#' @format A data frame with 159 observations and 2 variables:
#' \describe{
#' \item{Month}{}
#' \item{Ridership}{Amtrak Ridership Number of Passengers (in thousands) }
#' }
#'
#' @examples
#' Amtrak
"Amtrak"


#' Applicance Shipments
#'
#' The series of quarterly shipments (in millions of dollars) of US household
#' appliances between 1985 and 1989.
#'
#' @format A data frame with 20 observations and 2 variables:
#' \describe{
#' \item{Quarter}{}
#' \item{Shipments}{}
#' }
#'
#' @source{Data courtesy Ken Black}
#'
#' @examples
#' head(ApplianceShipments)
"ApplianceShipments"


#' AustralianWines
#'
#' Monthly Australian sales of wine Jan 1980 - Jul 1995
#'
#' Data
#' @format A data frame with 180 observations and 7 variables:
#' \describe{
#' \item{month}{}
#' \item{fortified}{}
#' \item{red}{}
#' \item{rose}{}
#' \item{sparkling}{}
#' \item{sweet.white}{}
#' \item{dry.white}{}
#' }
#' @source{Website}
#'
#' @examples
#' AustralianWines
"AustralianWines"


#' CanadianWorkHours
#'
#' Data
#' @format A data frame with 35 observations and 2 variables:
#' \describe{
#' \item{Year}{}
#' \item{Hours}{average annual number of weekly hours spent by Canadian manufacturing workers}
#' }
#' @source{Ken Black (used by permission)}
#'
#' @examples
#' CanadianWorkHours
"CanadianWorkHours"


#' DepartmentStoreSales
#'
#' Data
#' @format A data frame with 24 observations and 2 variables:
#' \describe{
#' \item{Quarter}{}
#' \item{Sales}{}
#' }
#'
#' @examples
#' DepartmentStoreSales
"DepartmentStoreSales"


#' NaturalGasSales
#'
#' Data
#' @format A data frame with 16 observations and 2 variables:
#' \describe{
#' \item{Quarter}{}
#' \item{Gas.Sales}{}
#' }
#'
#' @examples
#' NaturalGasSales
"NaturalGasSales"


#' Sept11Travel
#'
#' @description{Estimated Impacts of September 11th on US Travel}
#'
#' @format A data frame with 172 observations and 4 variables:
#' \describe{
#' \item{Month}{}
#' \item{Air.RPM..000s.}{Air revenue passenger miles (1 RMP is one revenue passenger carried for one mile)}
#' \item{Rail.PM}{Rail passenger miles}
#' \item{VMT..billions.}{Vehicle miles traveled}
#' }
#' @source{Bureau of Transportation Statistics:
#'   \url{https://www.bts.gov/archive/publications/estimated_impacts_of_9_11_on_us_travel/index}}
#'
#' @examples
#' Sept11Travel
"Sept11Travel"


#' ShampooSales
#'
#' @description{Data on the monthly sales of a certain shampoo over a 3-year period.}
#'
#' @format A data frame with 36 observations and 2 variables:
#' \describe{
#' \item{Month}{}
#' \item{Shampoo.Sales}{}
#' }
#' @source{Time Series Data Library, \url{https://pkg.yangzhuoranyang.com/tsdl/}}
#'
#' @examples
#' ShampooSales
"ShampooSales"


#' SP500
#'
#' @description{Monthly closing prices of S&P500}
#'
#' @format A data frame with 100 observations and 2 variables:
#' \describe{
#' \item{Date}{}
#' \item{Close}{Monthly closing prices of S&P500}
#' }
#'
#' @examples
#' head(SP500)
"SP500"


#' SouvenirSales
#'
#' @description{Monthly sales for a souvenir shop at a beach resort town in Queensland, Australia, between 1995–2001.}
#'
#' @format A data frame with 84 observations and 2 variables:
#' \describe{
#' \item{Date}{}
#' \item{Sales}{}
#' }
#' @source{Time Series Data Library, \url{https://pkg.yangzhuoranyang.com/tsdl/}}
#'
#' @examples
#' SouvenirSales
"SouvenirSales"


#' ToysRUsRevenues
#'
#' @description{The quarterly revenues of Toys “R” Us between 1992 and 1995}
#'
#' @format A data frame with 16 observations and 4 variables:
#' \describe{
#' \item{Index}{}
#' \item{QuarterYear}{}
#' \item{Revenue.in.million...}{}
#' \item{Quarter}{}
#' }
#' @source{Chris Albright}
#'
#' @examples
#' ToysRUsRevenues
"ToysRUsRevenues"


#' WalMartStock
#'
#' @description{The series of Walmart daily closing prices between February 2001
#' and February 2002.}
#' Data
#' @format A data frame with 248 observations and 2 variables:
#' \describe{
#' \item{Date}{}
#' \item{Close}{}
#' }
#' @source{publicly available, for example, at \url{https://finance.yahoo.com}.
#' These data are also used in "Data Analysis for Managers" by Albright, Winston & Zappe.}
#'
#' @examples
#' WalMartStock
"WalMartStock"

