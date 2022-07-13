# mlba
R code for "Machine Learning for Business Analytics. Concepts, Techniques, and Applications in R"



# Installation of required package
Most packages can be installed directly from CRAN. 

## MLBA
The accompanying source code and datasets are available in the `mlba` package. You can install this package using the following commands:
```
if (!require(mlba)) {
  library(devtools)
  install_github("gedeck/mlba/mlba", force=TRUE)
}
```
Note that this requires the installation of the `devtools` package

## DiscriMiner
The `DiscriMiner` package is currently not available from CRAN. You can install it directly from Github as described in https://github.com/gastonstat/DiscriMiner
```
if (!require(DiscriMiner)) {
    library(devtools)
    install_github('DiscriMiner’, username='gastonstat')
}
```

