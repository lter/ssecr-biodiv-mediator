#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
# Author: Olivia Ross
# Date: October 2026

# this script explores a global dataset from warming experiments 
# from the paper "A Global Meta-Analysis of Passive Experimental Warming Effects on Plant Traits and Community Properties"

# packages:
librarian::shelf(ggplot2, dplyr, here, psych)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
# READING IN DATA 

# downloaded the dataset from EDI; now reading in the csv
warm_raw <- read.csv(here("data/Warm_globalmeta/otc_data_sample_sizes.csv"))
str(warm_raw)

# also downloading the csv with effect sizes
warm_effect <- read.csv(here("data/Warm_globalmeta/otc_effect_sizes_L2.csv"))
str(warm_effect)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
# EXPLORING VARIABLES 

# exploring some variables from the raw df 
str(warm_raw)
unique(warm_raw$Var_type)
unique(warm_raw$Yunits)

# making some histograms to visualize data 
warm_raw$Study_year_start <- as.numeric(warm_raw$Study_year_start)
str(warm_raw$Study_year_start)

histBy(warm_raw, "Years_warmed")
histBy(warm_raw, "Study_year_start")

