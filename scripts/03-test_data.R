#### Preamble ####
# Purpose: Creating two tests for the marriage licence dataset
# Author: Julia Lee
# Date: 19 September 2024
# Contact: jlee.lee@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have simulated the data
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

#### Test #1: Testing for Negative Numbers ####
data$number_of_marriages |> min() <= 0

#### Test #2: Testing for NAs ####
all(is.na(data$number_of_marriages))