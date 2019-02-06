###################
# app.R
# 
# Main controller. 
# Used to import your ui and server components; initializes the app.
###################

args <- commandArgs( trailingOnly = TRUE ) # read arguments

if( length(args) > 0 ){
  setwd( args[1] ) # Get actual directory path from args passed by the shel/batch file.
} else {
  # Set dashboard directory path in order to start it from R or Rstudio.
  # setwd( "/Dashboards/Shiny-Dashboard-Template" ) # As a note, this is Windows 
  # setwd( "/home/svrvbi/Dashboards/Shiny-Dashboard-Template" ) # Linux
}


library(shiny)
library(shinydashboard)

source('./ui.R')
source('./server.R')


shinyApp(ui, server)
