#### Preamble ####
# Purpose: Tests the simulated data
# Author: Lexun Yu
# Date: 19 Sep 2024
# Contact: lx.yu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None


#### Workspace setup ####
library(tidyverse)

#### Test data ####
data <- read_csv("data/raw_data/simulation.csv")


# Test for negative numbers
test1 <-
data$num_of_marriage |> min() >=0

# Test for NAs
test2 <-
  sum(is.na(data)) == 0

print(test1)
print(test2)
