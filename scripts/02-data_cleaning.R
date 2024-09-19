#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)
library(lubridate)
library(tidyr)

#### Clean data ####
raw_data <- read_csv("data/raw_data/marriage_license.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  separate(col = time_period, into = c("year", "month"), sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-")))

selected_clean_data <-
  cleaned_data |>
  select(
    date,
    marriage_licenses
  )

write_csv(selected_clean_data, "data/analysis_data/analysis_data.csv")
