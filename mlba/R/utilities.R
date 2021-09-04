

#' regressionSummary
#'
#' @description Convenience function to calculate a variety of regression
#' metrics
#'
#' @param predicted predicted values
#' @param actual actual values
#'
#' @return list containing the following regression metrics RMSE and MAE
#' @import caret
#' @export
#'
#' @examples
#' lm.SR <- lm(sr ~ pop15 + pop75 + dpi + ddpi, data = LifeCycleSavings)
#' regressionSummary(predict(lm.SR, LifeCycleSavings), LifeCycleSavings$sr)
regressionSummary <- function(predicted, actual) {
  return (list(
    RMSE = caret::RMSE(predicted, actual),
    MAE = caret::MAE(predicted, actual)
  ))
}
