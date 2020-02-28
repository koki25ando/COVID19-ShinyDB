setwd("/Users/KokiAndo/Desktop/R/shiny dashboard/covid19_shiny")
pacman::p_load(tidyverse, shiny, shinydashboard, data.table)

data = fread('data/data.csv')
data$確定日 = as.Date(data$確定日, format = "%m/%d")
names(data)[3] = "Date"