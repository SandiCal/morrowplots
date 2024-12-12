#' Morrow Plots Yield and Treatment Data
#'
#' Yield and treatment data for the historic Morrow Plots at the
#' University of Illinois at Urbana Champaign from 1888--2021.
#'
#' @format
#' A dataframe containing and 3216 rows with the following 26 variables:
#' \describe{
#'  \item{phase}{An integer between 1-5 that describes the important stages of the experiment when plot size, crop rotation or treatments changed.}
#'  \item{year}{Date in YYYY format for year crops were planted and harvested.}
#'  \item{plot}{Character string that indicates the plot number, North/South location, and A/B/C/D subplot (see Data Sources section above for an important note about plot names); values are 3NA; 3NB; 3NC; 3ND; 3SA; 3SB; 3SC; 3SD; 4NA; 4NB; 4NC; 4ND; 4SA; 4SB; 4SC; 4SD; 5NA; 5NB; 5NC; 5ND; 5SA; 5SB; 5SC; 5SD}
#'  \item{plot_num}{Integer of 3, 4, or 5 for the plot number without subplot indicators.}
#'  \item{plot_dir}{Character string that indicates the north/south and east/west direction; values are NE, NW, SE, or SW.}
#'  \item{rotation}{An integer of 1, 2, or 3 that describes the year in the crop rotation schedule.}
#'  \item{corn}{A true or false variable to make it easy to group corn in rotation and continuous corn.}
#'  \item{crop}{Character string that for the crop planted with separate values for corn in rotation and continuous corn; values are A (alfalfa), C (corn), CC (continuous corn), H (hay), O (oats), or S (soybean).}
#'  \item{variety}{Character string with free text of the crop variety name.}
#'  \item{all_corn}{A true or false variable indicating whether this was a year when corn was planted in all plots.}
#'  \item{yield_bush}{Integer value of yeilds for all crops except hay in bushels/acre.}
#'  \item{yield_ton}{Integer value of yeild of hay in tons/acre.}
#'  \item{treated}{A true or false variable indicating whether or not this plot was treated that year.}
#'  \item{treatment}{Character string that describes the treatment plan for this plot; values are none, MLrP, MLbP, 0LNsPK, MLrPNsPK, LNPK, LHNPK, or MLP.}
#'  \item{manure}{An integer for the specific amount of manure applied to this plot this year in lbs/plot.}
#'  \item{lime}{An integer for the specific amount of lime applied to this plot this year in tons/acre}
#'  \item{nit}{An integer for the specific amount of nitrogen applied to this plot this year in lbs/acre.}
#'  \item{p205}{An integer for the specific amount of phosphorus (on an oxide basis) applied to this plot this year in lbs/acre.}
#'  \item{k20}{An integer for the specific amount of potassium (on an oxide basis) applied to this plot this year in lbs/acre.}
#'  \item{stover}{An integer for the amount of stover or straw removed in tons/acre.}
#'  \item{population}{An integer for the number of plants based on counts from hand harvesting in plants/acre.}
#'  \item{plant_date}{Date the crop was planted in MM/DD/YYYY format.}
#'  \item{plant_day}{An integer that indicates the nth day in the year that the crop was planted.}
#'  \item{soil_sample}{A true or false variable that indicates whether there is at least one soil sample for this plot and year.}
#'  \item{damage}{Character string with free text describing known sources of significant damage to crops that year.}
#'  \item{notes}{Character string with free text for any notes that do not fit in other fields.}
#'  }
#' @source Dataset published in the Illinois Data Bank at doi.org/10.13012/B2IDB-7865141_V2
"morrowplots"
