
<!-- README.md is generated from README.Rmd. Please edit that file -->

# morrowplots

<!-- badges: start -->

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/TBD)](https://cran.r-project.org/package=morrowplots)
[![R-CMD-check](https://github.com/SandiCal/morrowplots/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/SandiCal/morrowplots/actions/workflows/R-CMD-check.yaml)
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

Data is structured as a dataframe in the [Tidy
Data](https://vita.had.co.nz/papers/tidy-data.pdf) format so that each
variable has its own column, each observation has its own row, and each
value has its own cell.

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

The codebook that describes all variables is availabel in the help
documentation.

``` r
help(morrowplots)
```

<!DOCTYPE html><html><head><title>R: Morrow Plots Yield and Treatment Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.15.3/dist/katex.min.css">
<script type="text/javascript">
const macros = { "\\R": "\\textsf{R}", "\\code": "\\texttt"};
function processMathHTML() {
    var l = document.getElementsByClassName('reqn');
    for (let e of l) { katex.render(e.textContent, e, { throwOnError: false, macros }); }
    return;
}</script>
<script defer src="https://cdn.jsdelivr.net/npm/katex@0.15.3/dist/katex.min.js"
    onload="processMathHTML();"></script>
<link rel="stylesheet" type="text/css" href="R.css" />
</head><body><div class="container">
&#10;<table style="width: 100%;"><tr><td>morrowplots</td><td style="text-align: right;">R Documentation</td></tr></table>
&#10;<h2 id='morrowplots'>Morrow Plots Yield and Treatment Data</h2>
&#10;<h3>Description</h3>
&#10;<p>Yield and treatment data for the historic Morrow Plots at the
University of Illinois at Urbana Champaign from 1888&ndash;2021.
</p>
&#10;
<h3>Usage</h3>
&#10;<pre><code class='language-R'>morrowplots
</code></pre>
&#10;
<h3>Format</h3>
&#10;<p>A dataframe containing 26 variables and 3216 rows.
</p>
&#10;<dl>
<dt>phase</dt><dd><p>An integer between 1-5 that describes the important stages of the experiment when plot size, crop rotation or treatments changed.</p>
</dd>
<dt>year</dt><dd><p>Date in YYYY format for year crops were planted and harvested.</p>
</dd>
<dt>plot</dt><dd><p>Character string that indicates the plot number, North/South location, and A/B/C/D subplot (see Data Sources section above for an important note about plot names); values are 3NA; 3NB; 3NC; 3ND; 3SA; 3SB; 3SC; 3SD; 4NA; 4NB; 4NC; 4ND; 4SA; 4SB; 4SC; 4SD; 5NA; 5NB; 5NC; 5ND; 5SA; 5SB; 5SC; 5SD</p>
</dd>
<dt>plot_num</dt><dd><p>Integer of 3, 4, or 5 for the plot number without subplot indicators.</p>
</dd>
<dt>plot_dir</dt><dd><p>Character string that indicates the north/south and east/west direction; values are NE, NW, SE, or SW.</p>
</dd>
<dt>rotation</dt><dd><p>An integer of 1, 2, or 3 that describes the year in the crop rotation schedule.</p>
</dd>
<dt>corn</dt><dd><p>A true or false variable to make it easy to group corn in rotation and continuous corn.</p>
</dd>
<dt>crop</dt><dd><p>Character string that for the crop planted with separate values for corn in rotation and continuous corn; values are A (alfalfa), C (corn), CC (continuous corn), H (hay), O (oats), or S (soybean).</p>
</dd>
<dt>variety</dt><dd><p>Character string with free text of the crop variety name.</p>
</dd>
<dt>all_corn</dt><dd><p>A true or false variable indicating whether this was a year when corn was planted in all plots.</p>
</dd>
<dt>yield_bush</dt><dd><p>Integer value of yeilds for all crops except hay in bushels/acre.</p>
</dd>
<dt>yield_ton</dt><dd><p>Integer value of yeild of hay in tons/acre.</p>
</dd>
<dt>treated</dt><dd><p>A true or false variable indicating whether or not this plot was treated that year.</p>
</dd>
<dt>treatment</dt><dd><p>Character string that describes the treatment plan for this plot; values are none, MLrP, MLbP, 0LNsPK, MLrPNsPK, LNPK, LHNPK, or MLP.</p>
</dd>
<dt>manure</dt><dd><p>An integer for the specific amount of manure applied to this plot this year in lbs/acre.</p>
</dd>
<dt>lime</dt><dd><p>An integer for the specific amount of lime applied to this plot this year in tons/acre</p>
</dd>
<dt>nit</dt><dd><p>An integer for the specific amount of nitrogen applied to this plot this year in lbs/acre.</p>
</dd>
<dt>p205</dt><dd><p>An integer for the specific amount of phosphorus (on an oxide basis) applied to this plot this year in lbs/acre.</p>
</dd>
<dt>k20</dt><dd><p>An integer for the specific amount of potassium (on an oxide basis) applied to this plot this year in lbs/acre.</p>
</dd>
<dt>stover</dt><dd><p>An integer for the amount of stover or straw removed in tons/acre.</p>
</dd>
<dt>population</dt><dd><p>An integer for the number of plants based on counts from hand harvesting in plants/acre.</p>
</dd>
<dt>plant_date</dt><dd><p>Date the crop was planted in MM/DD/YYYY format.</p>
</dd>
<dt>plant_day</dt><dd><p>An integer that indicates the nth day in the year that the crop was planted.</p>
</dd>
<dt>soil_sample</dt><dd><p>A true or false variable that indicates whether there is at least one soil sample for this plot and year.</p>
</dd>
<dt>damage</dt><dd><p>Character string with free text describing known sources of significant damage to crops that year.</p>
</dd>
<dt>notes</dt><dd><p>Character string with free text for any notes that do not fit in other fields.</p>
</dd>
</dl>
&#10;
&#10;<h3>Source</h3>
&#10;<p>Published dataset in the Illinios Data Bank <a href="https://doi.org/10.13012/B2IDB-7865141_V1">https://doi.org/10.13012/B2IDB-7865141_V1</a>
</p>
&#10;
</div>
</body></html>
