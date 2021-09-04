# Access a few larger datasets from github


#' Laptop Sales
#'
#' @description{Loads the full dataset from GitHub.
#' The laptop sales data were part of the ENBIS 2009 Challenge in
#' Industrial Statistics.}
#'
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
#' laptopSales <- LaptopSales()
#' head(laptopSales)
#' @export
LaptopSales <- function() {
  url <- 'https://github.com/gedeck/dmba/raw/master/src/dmba/csvFiles/LaptopSales.csv.gz'
  con <- gzcon(url(url))
  txt <- readLines(con)
  return (utils::read.csv(textConnection(txt)))
}


#' AutoAndElectronics
#'
#' @description{URL of data set for a classification task—to classify Internet discussion
#' posts as either auto-related or electronics-related.
#'
#' The data set contains two sets of messages; one with 1000 auto-related posts and one with 1000 electronics-related posts.}
#'
#' @return the URL of dataset on Github
#' @source{The posts are taken from Internet groups devoted to autos and electronics}
#'
#' @examples
#' \dontrun{corpus <- Corpus(ZipSource(AutoAndElectronics, recursive=True))}
#' @export
AutoAndElectronics <- 'https://github.com/gedeck/dmba/raw/master/src/dmba/csvFiles/AutoAndElectronics.zip'
