###################
# body.R
# 
# Create the body for the ui. 
# If you had multiple tabs, you could split those into their own
# components as well.
###################
body <- dashboardBody(
  tabItems(
    
    ########################
    # First tab content
    ########################
    tabItem(
      tabName = "dashboard",
      fluidRow(
        
        # CONTROLS
        box(
          
          title = "Controls",
          
          # Choose a column
          selectInput(
            "columnChoice",
            "Choose a column:",
            choices = colnames(df),
            selected = "n"),
          
          sliderInput("slider", "Number of observations:", 1, 100, 50),
          
          # Create an eventReactive element
          actionButton(
            inputId = "submit",
            label = "Submit column")
          
        ),
        # PLOT THE THTINGS
        box( plotOutput("histPlot") )
      )
    ),
    
    ########################
    # Second tab content
    ########################
    tabItem(
      tabName = "widgets",
      h2("Widgets tab content")
    )
  )
)