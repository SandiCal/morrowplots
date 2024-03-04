## code to prepare `morrowplots` dataset goes here

library(tidyverse)
morrowplots <- read_csv("../2024/morrow-plots_v01_1888-2021_soil.csv")
usethis::use_data(morrowplots, overwrite = TRUE)
