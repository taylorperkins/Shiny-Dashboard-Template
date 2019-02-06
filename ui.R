###################
# ui.R
# 
# Initializes the ui. 
# Used to load in your header, sidebar, and body components.
###################

# If shinydashboard library is not imported here, the dashboard does not work 
# on Shiny Server.
library( shinydashboard )

source('./components/header.R')
source('./components/sidebar.R')
source('./components/body.R')


ui <- dashboardPage(
  header = header,
  sidebar =  sidebar,
  body = body)
