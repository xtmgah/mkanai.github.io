---
layout: page
lang: en
permalink: /software/
title: Software
---

## Software used in our journal papers

### Kanai, M. *et al.* (2016)

{% reference Kanai2016 -f publications.bib %}

* The authors’ scripts used for calculations: {% github_link GWAS_threshold_scripts %}
* {% smooth_scroll WRShd %}
* [PLINK 1.9](https://www.cog-genomics.org/plink2)
* [EIGENSOFT 6.0.1](http://www.hsph.harvard.edu/alkes-price/software/)

--------

## R packages

* {% smooth_scroll deFinetti %}
* {% smooth_scroll ccmatch %}
* {% smooth_scroll WRShd %}


### Installation
You can install any of my packages via the following code in R:

```r
if (!require("devtools")) {
  install.packages("devtools")
}
devtools::install_github("mkanai/{package_name}")
```

--------

### deFinetti
{% github_link deFinetti! %}

A package for plotting a [de Finetti diagram](http://en.wikipedia.org/wiki/De_Finetti_diagram) and distributions of [F-statistics](http://en.wikipedia.org/wiki/F-statistics) of genotypes.

![deFinetti_example.png](/img/deFinetti_example.png)

--------
### ccmatch
{% github_link ccmatch! %}

A package for optimal matching of cases to controls using network flow theory.

**Reference**

* {% reference Rosenbaum1989 -f references.bib %}


--------
### WRShd
{% github_link WRShd! %}

This package provides C++ sub-routines for the Harrell-Davis estimate functions from R. R. Wilcox' robust statistics package [`WRS`](https://github.com/nicebread/WRS), which substantially speed up the original implementation in R.


[[back]]({{ site.url }})

