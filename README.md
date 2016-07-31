# openblasctl

* **Version:** 0.1-0
* **License:** [![License](http://img.shields.io/badge/license-BSD%202--Clause-orange.svg?style=flat)](http://opensource.org/licenses/BSD-2-Clause)
* **Author:** Drew Schmidt


A micro-package for controlling the number of threads used by OpenBLAS from R.  If you're somehow incapable of using the `OMP_NUM_THREADS` environment variable, then you can use this.


## Installation

The development version is maintained on GitHub, and can easily be installed by any of the packages that offer installations from GitHub:

```r
### Pick your preference
devtools::install_github("wrathematics/openblasctl")
ghit::install_github("wrathematics/openblasctl")
remotes::install_github("wrathematics/openblasctl")
```

If your OpenBLAS installation is in a strange place, you can specify it using the `--with-openblas-libpath` configure flag. For example:

```bash
R CMD INSTALL openblasctl --configure-args="--with-openblas-libpath='/path/to/libopenblas/files/'"
```


## Package Use

```r
### Set desired number of threads
library(openblasctl)
openblas_set_num_threads(2)

### Call your linear algebra routines
La.svd(some_big_matrix)
```
