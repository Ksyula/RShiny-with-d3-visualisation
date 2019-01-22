
# Shiny Development Playground with D3 visualisation 
# This is the server logic for a Shiny web application.

setwd("/Users/ksenia/Documents/Study/Python_R_code/RShiny-with-d3-visualisation/RShiny-with-d3-visualisation")
# All libraries 
library("shiny")
library("shinydashboard")
library("data.table")


# Load shiny modules by listing all R files in the workspace and filtering
fileSources <- list.files(pattern = "*.R", recursive = T)
print(fileSources)
fileSources <- fileSources[grepl("modules", fileSources)]
print(fileSources)
sapply(fileSources, source, .GlobalEnv)
