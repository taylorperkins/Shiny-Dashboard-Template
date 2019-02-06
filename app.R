###################
# app.R
# 
# Main controller. 
# Used to import your ui and server components; initializes the app.
###################

args <- commandArgs( trailingOnly = TRUE ) # read arguments

setwd( args[1] ) # Get actual directory path from args passed by the shel/batch file.

library(shiny)
library(shinydashboard)

source('./ui.R')
source('./server.R')


shinyApp(ui, server)
