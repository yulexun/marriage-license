#### Preamble ####
# Purpose: Simulates data of Toronto's marriage statistics
# Author: Lexun Yu
# Date: 19 Sep 2024
# Contact: lx.yu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None


#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(lubridate)

#### Simulate data ####

n <- 100

set.seed(123)

time <- sample(seq(ymd("2018-01-01"),
  ymd("2023-01-01"),
  by = "day"
), n, replace = TRUE)

data <-
  tibble(
    date = time,
    num_of_marriage = rpois(n, lambda = 15)
  )

write_csv(data, "data/raw_data/simulation.csv")
