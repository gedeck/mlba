#' AutosElectronics
#'
#' @description{Filename of data set for a classification task—to classify Internet discussion
#' posts as either auto-related or electronics-related.
#'
#' The data set contains two sets of messages; one with 1000 auto-related posts and one with 1000 electronics-related posts.}
#'
#' @return the filename of the dataset that is installed with the mlba package
#' @source{The posts are taken from Internet groups devoted to autos and electronics}
#'
#' @examples
#' \dontrun{corpus <- Corpus(ZipSource(AutosElectronics, recursive=True))}
#' @export
AutosElectronics <- system.file("extdata", "AutosElectronics.zip", package = "mlba")

#' regressionSummary
#'
#' @description Convenience function to calculate a variety of regression
#' metrics
#'
#' @param predicted predicted values
#' @param actual actual values
#'
#' @return list containing the regression metrics ME, RMSE and MAE
#' @import caret
#' @export
#'
#' @examples
#' lm.SR <- lm(sr ~ pop15 + pop75 + dpi + ddpi, data = LifeCycleSavings)
#' regressionSummary(predict(lm.SR, LifeCycleSavings), LifeCycleSavings$sr)
regressionSummary <- function(predicted, actual) {
  return (list(
    ME = mean(actual - predicted),
    RMSE = caret::RMSE(predicted, actual),
    MAE = caret::MAE(predicted, actual)
  ))
}
