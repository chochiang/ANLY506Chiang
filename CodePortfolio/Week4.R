# Week 4 - Data Transformation  
# Data cleaning and preparation take up 80% of time spent in data analysis. And tidyverse workflow suggests a framework to structuring data before any analysis takes place, that includes transforming the data with dplyr.
# Practice: Chapter 11 of R for Data Science

# The packages needed in this exercise
library(tidyverse)
library(dplyr)

# The function `parse_datetime()` organizes an ISO8601 formatted time from the biggest to smallest:
parse_datetime("2010-11-30T2010")

# Exercise 11.3.5.7
# Generate the correct format string to parse each of the following dates and times:
d1 <- "January 1, 2010"
d2 <- "2015-Mar-07"
d3 <- "06-Jun-2017"
d4 <- c("August 19 (2015)", "July 1 (2015)")
d5 <- "12/30/14" # Dec 30, 2014
t1 <- "1705"
t2 <- "11:15:10.12 PM"

# The percentage sign `%` followed by a character defines the format of the date or time stamp.
# For Exammple:
# `%B` indicates month spelt in full, such as "January", "February", "March"
# '%b' indicates month shortened, such as "Jan", "Feb", "Mar"
parse_datetime(d1, "%B %d, %Y")
parse_datetime(d2, "%Y-%b-%d")
parse_datetime(d3, "%d-%b-%Y")
parse_datetime(d4, "%B %d (%Y)")
parse_datetime(d5, "%m/%d/%y")
parse_time(t1,"%H %M")
parse_time(t2)
