
<!-- README.md is generated from README.Rmd. Please edit that file -->

# exuber <img src="man/figures/logo.png" align="right" alt="" width="120" />

[![Build
Status](https://travis-ci.org/kvasilopoulos/exuber.svg?branch=master)](https://travis-ci.org/kvasilopoulos/exuber)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/kvasilopoulos/exuber?branch=master&svg=true)](https://ci.appveyor.com/project/kvasilopoulos/exuber)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/exuber)](https://cran.r-project.org/package=exuber)
[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![codecov](https://codecov.io/gh/kvasilopoulos/exuber/branch/master/graph/badge.svg)](https://codecov.io/gh/kvasilopoulos/exuber)

Testing for and dating periods of explosive dynamics (exuberance) in
time series using the univariate and panel recursive unit root tests
proposed by [Phillips et al. (2015)](doi:10.1111/iere.12132) and
[Pavlidis et al. (2016)](doi:10.1007/s11146-015-9531-2). The recursive
least-squares algorithm utilizes the matrix inversion lemma to avoid
matrix inversion which results in significant speed improvements.
Simulation of a variety of periodically-collapsing bubble processes.

### Installation

``` r
# Install release version from CRAN
install.packages("exuber")

# Install development version from GitHub
if(!require(devtools)) install.packages("devtools")
devtools::install_github("kvasilopoulos/exuber")
```

If you encounter a clear bug, please file a reproducible example on
[GitHub](https://github.com/kvasilopoulos/exuber/issues).

### Usage

This is a basic example which shows you how to use exuber:

### License

This package is free and open source software, licensed under
[GPL-3](https://github.com/kvasilopoulos/exuber/blob/master/LICENSE).

### Code of Conduct

Please note that this project is released with a [Contributor Code of
Conduct](https://github.com/kvasilopoulos/exuber/blob/master/CONDUCT.md).
By participating in this project you agree to abide by its terms.
