
# Shiny Development Playground with D3 visualisation 
# This is the server logic for a Shiny web application.

setwd("/Users/ksenia/Documents/Study/Python_R_code/RShiny-with-d3-visualisation/RShiny-with-d3-visualisation")
# All libraries 
library("shiny")
library("shinydashboard")
library("data.table")
library("r2d3") # Barchart from row JS
library("d3Network") # Graph from data.frames with d3ForceNetwork() func


# Load shiny modules by listing all R files in the workspace and filtering
fileSources <- list.files(pattern = "*.R", recursive = T)
fileSources <- fileSources[grepl("modules", fileSources)]
sapply(fileSources, source, .GlobalEnv)

