
<table>
<tr>
<td><img src="img/mlba-bookcover.png" width=300></td>
<td>
<h1>Machine Learning for Business Analytics<br>
<small>Concepts, Techniques, and Applications in R</small></h1>

by Galit Shmueli, Peter C. Bruce, Peter Gedeck, Inbal Yahav, Nitin R. Patel

Publisher: Wiley; 2nd edition (February, 2023)
ISBN: 978-1-118-83517-2
Preorder on 
<a href="https://www.wiley.com/en-us/Machine+Learning+for+Business+Analytics%3A+Concepts%2C+Techniques%2C+and+Applications+in+R%2C+2nd+Edition-p-9781119835172">Wiley</a>
or
<a href="https://www.amazon.com/Machine-Learning-Business-Analytics-Applications/dp/1119835178/">Amazon</a>


<!-- Errata: http://oreilly.com/catalog/errata.csp?isbn=9781492072942 -->
</td>
</tr>
</table>

# Description
Machine learning —also known as data mining or data analytics— is a fundamental part of data science. It is used by organizations in a wide variety of arenas to turn raw data into actionable information.

Machine Learning for Business Analytics: Concepts, Techniques, and Applications in R provides a comprehensive introduction and an overview of this methodology. This best-selling textbook covers both statistical and machine learning algorithms for prediction, classification, visualization, dimension reduction, rule mining, recommendations, clustering, text mining, experimentation and network analytics. Along with hands-on exercises and real-life case studies, it also discusses managerial and ethical issues for responsible use of machine learning techniques.

# Data repository
This repository contains datasets used in the book. The datasets are described in [mlba_2.0.0.pdf](mlba_2.0.0.pdf).

The R code used in individual chapters is available from [https://gedeck.github.io/mlba-R-code/](https://gedeck.github.io/mlba-R-code/)
To find instructors material go to [www.dataminingbook.com](https://www.dataminingbook.com/book/r-2nd-edition-2022). 

# Installation of the mlba package
You can install this package using the following commands:
```
if (!require(mlba)) {
  library(devtools)
  install_github("gedeck/mlba/mlba", force=TRUE)
}
```
Note that this requires the installation of the `devtools` package
