###################
# server.R
# 
# For all your server needs 
###################
server <- function(input, output, session) {
  
  histPlot_df <- eventReactive(
    input$submit,
    {
      df[[ input$columnChoice ]]
    })
  
  output$histPlot <- renderPlot({
    data <- histPlot_df()[ seq_len(input$slider) ]
    hist(data)
  })
  
}
