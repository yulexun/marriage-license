#### Preamble ####
# Purpose: Downloads and saves the data from opendatatoronto,
# the data is "Marriage Licence Statistics"
# Author: Lexun Yu
# Date: 19 Sep 2024
# Contact: lx.yu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None


#### Workspace setup ####
library(opendatatoronto)
library(dplyr)
library(readr)

#### Download data ####
toronto_fire <-
  list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb") |>
  filter(name == "Marriage Licence Statistics Data.csv") |>
  get_resource()

write_csv(
  x = toronto_fire,
  file = "data/raw_data/marriage_license.csv"
)
