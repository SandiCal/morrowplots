## code to prepare `morrowplots` dataset goes here

library(tidyverse)
morrowplots <- read_csv("../morrow-plots_v02_1888-2021_soil.csv")
usethis::use_data(morrowplots, overwrite = TRUE)
