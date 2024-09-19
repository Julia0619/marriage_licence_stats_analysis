#### Preamble ####
# Purpose: Simulating marriage licence data from Open Data Toronto
# Author: Julia Lee
# Date: 19 September 2024
# Contact: jlee.lee@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
start_date = 2018-01-01
end_date = 2023-01-01
number_of_dates <- 100

data <- 
  tibble(
    dates = as.Date(
      runif(n = number_of_dates, 
            min = as.numeric(start_date),
            max = as.numeric(end_date)
      ), 
      origin = "1970-01-01"
    ), 
    number_of_marriages = rpois(n=100, lambda = 15)
  )


#### Write csv ####
write_csv(data, file = "data/raw_data/simulated.csv")

