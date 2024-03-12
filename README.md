
<!-- README.md is generated from README.Rmd. Please edit that file -->

# morrowplots

<!-- badges: start -->

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/TBD)](https://cran.r-project.org/package=morrowplots)
<!-- badges: end -->

Use morrowplots to load, explore, and analyze nearly 150 years of ag
data from the historic [Morrow
Plots](https://aces.illinois.edu/research/history/morrow-plots) at the
[University of Illinois Urbana-Champaign](https://illinois.edu/). Data
collection and formats have evolved over time, and this dataset was
created to aggregate decades of tabular data (previously in various
physical and digital forms) into a format compatible with the R
programming language. Vignettes provide mini lessons on the history of
the Morrow Plots and example code for exploration of the data.

## Installation

(Update on CRAN release!) You can install the **stable** version from
[CRAN](https://cran.r-project.org/package=morrowplots).

``` r
install.packages("morrowplots")
```

You can install the **development** version
[Github](https://github.com/SandiCal/morrowplots):

``` r
# install.packages("devtools")
devtools::install_github("SandiCal/morrowplots")
```

## Structure

Data is structured as a dataframe containing 26 variables and 3216 rows
in the [Tidy Data](https://vita.had.co.nz/papers/tidy-data.pdf) format.

``` r
library(morrowplots)
library(knitr)
kable(head(morrowplots))
```

| phase | year | plot | plot_num | plot_dir | rotation | corn | crop | variety      | all_corn | yield_bush | yield_ton | treated | treatment | manure | lime | nit | p205 | k20 | stover | population | plant_date | plant_day | soil_sample | damage | notes |
|------:|-----:|:-----|---------:|:---------|---------:|:-----|:-----|:-------------|:---------|-----------:|----------:|:--------|:----------|-------:|-----:|----:|-----:|----:|-------:|-----------:|:-----------|----------:|:------------|:-------|:------|
|     1 | 1888 | 3NA  |        3 | NW       |        1 | TRUE | CC   | Burr’s White | FALSE    |       54.3 |        NA | FALSE   | none      |     NA |   NA |  NA |   NA |  NA |     NA |         NA | 1888-05-04 |       125 | FALSE       | NA     | NA    |
|     1 | 1888 | 3NB  |        3 | NW       |        1 | TRUE | CC   | Burr’s White | FALSE    |       54.3 |        NA | FALSE   | none      |     NA |   NA |  NA |   NA |  NA |     NA |         NA | 1888-05-04 |       125 | FALSE       | NA     | NA    |
|     1 | 1888 | 3NC  |        3 | NE       |        1 | TRUE | CC   | Burr’s White | FALSE    |       54.3 |        NA | FALSE   | none      |     NA |   NA |  NA |   NA |  NA |     NA |         NA | 1888-05-04 |       125 | FALSE       | NA     | NA    |
|     1 | 1888 | 3ND  |        3 | NE       |        1 | TRUE | CC   | Burr’s White | FALSE    |       54.3 |        NA | FALSE   | none      |     NA |   NA |  NA |   NA |  NA |     NA |         NA | 1888-05-04 |       125 | FALSE       | NA     | NA    |
|     1 | 1888 | 3SA  |        3 | SW       |        1 | TRUE | CC   | Burr’s White | FALSE    |       54.3 |        NA | FALSE   | none      |     NA |   NA |  NA |   NA |  NA |     NA |         NA | 1888-05-04 |       125 | FALSE       | NA     | NA    |
|     1 | 1888 | 3SB  |        3 | SW       |        1 | TRUE | CC   | Burr’s White | FALSE    |       54.3 |        NA | FALSE   | none      |     NA |   NA |  NA |   NA |  NA |     NA |         NA | 1888-05-04 |       125 | FALSE       | NA     | NA    |

## Variables

You can view the codebook that describes all variables in the help.

``` r
help(morrowplots)
```

## -

## -

## - initial helper text and other notes

## - \*\*\* to delete later \*\*\*

Data Package README examples:

BEST - \* <https://github.com/forestgeo/fgeo.x> - repo  
\* <https://forestgeo.github.io/fgeo.x/> - page

Others - \* <https://github.com/hadley/babynames> \*
<https://github.com/robjhyndman/cricketdata>

## -

## -

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.

<iframe width="560" height="315" src="https://www.youtube.com/embed/hsipxaNGnbc?si=2xIMfY8ndPYl_zSZ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen>
</iframe>
