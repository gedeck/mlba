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


#' getMovieLense
#'
#' @description{Download Movielens 10k dataset}
#'
#' @return list containing the ratings and movies data
#'
#' \describe{
#' \item{ratings: userId}{Anonymized MovieLens user ID. Each user has rated at least 20 movies.}
#' \item{ratings: movieId}{Movie ID consistent with that used on the MovieLens website (e.g., information for movie id 1 is available at \url{https://movielens.org/movies/1}).}
#' \item{ratings: rating}{Movie rating provided by user on a 5-star scale, with half-star increments (0.5 star - 5 stars)}
#' \item{ratings: timestamp}{Timestamp when rating was recorded. Time is in seconds since midnight Coordinated Universal Time (UTC) of January 1, 1970}
#' \item{movies: movieId}{Same as ratings data}
#' \item{movies: title}{Movie titles, including the year of release in parentheses}
#' \item{movies: genres}{Pipe-separated list of genres for corresponding movie title}
#' }
#' @source{The Movielens dataset is downloaded from \url{https://grouplens.org/datasets/movielens/}.
#' Dataset creation date: September 26, 2018). See \url{https://files.grouplens.org/datasets/movielens/ml-latest-small-README.html}
#' for the usage license.
#'
#' F. Maxwell Harper and Joseph A. Konstan. 2015. The MovieLens Datasets: History and Context.
#' ACM Transactions on Interactive Intelligent Systems (TiiS) 5, 4: 19:1–19:19.
#' \url{https://doi.org/10.1145/2827872}}
#'
#' @examples
#' \dontrun{data <- mlba::getMovieLens()}
#' @export
getMovieLens <- function() {
  url <- "https://files.grouplens.org/datasets/movielens/ml-latest-small.zip"
  temp <- tempfile()
  utils::download.file(url, temp)
  ratings <- utils::read.csv(unz(temp, file.path('ml-latest-small', 'ratings.csv')))
  movies <- utils::read.csv(unz(temp, file.path('ml-latest-small', 'movies.csv')))
  unlink(temp)
  return (list(ratings=ratings, movies=movies))
}
