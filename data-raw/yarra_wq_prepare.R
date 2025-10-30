# data-raw/yarra_wq_prepare.R
# Prepare Yarra River Water Quality dataset

library(readr)
library(dplyr)
library(janitor)
library(usethis)

# Load the csv (ensure it's in data-raw/)
yarra_wq <- read_csv("data-raw/yarra_wq_clean.csv", show_col_types = FALSE) |>
  clean_names()

# Save it as a package dataset
usethis::use_data(yarra_wq, overwrite = TRUE)
