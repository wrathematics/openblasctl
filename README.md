# openblasctl

* **Version:** 0.1-0
* **URL**: https://github.com/wrathematics/openblasctl
* **License:** [BSD 2-Clause](http://opensource.org/licenses/BSD-2-Clause)
* **Author:** Drew Schmidt

A micro-package for controlling the number of threads used by OpenBLAS from R. This can be useful if you did not set the `OMP_NUM_THREADS` environment variable before starting your R session. Obviously this requires that you are using the [OpenBLAS library](https://www.openblas.net/) with R.

See the details section of `?openblasctl::openblas_set_num_threads` for a for a full explanation.



## Installation

You can install the stable version from [the HPCRAN](https://hpcran.org) using the usual `install.packages()`:

```r
install.packages("openblasctl", repos="https://hpcran.org")
```

The development version is maintained on GitHub:

```r
remotes::install_github("wrathematics/openblasctl")
```

If your OpenBLAS installation is in a strange place, you can specify it using the `--with-openblas-libpath` configure argument. For example:

```r
install.packages("openblasctl", repos="https://hpcran.org", configure-args="--with-openblas-libpath='/path/to/libopenblas/files/'"
```



## Package Use

```r
### Set desired number of threads
library(openblasctl)
openblas_set_num_threads(2)

### Call your linear algebra routines
La.svd(some_big_matrix)
```
