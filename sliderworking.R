ui <- fluidPage(
  sliderInput("obs", "Number of observations:",
              min = 0, max = 1000, value = 500
  ),
  textOutput("distPlot"),
  
  progressBar(id = "pb8", value = 1500, total = 5000, status = "info", display_pct = TRUE, striped = TRUE, title = "All options")
)

# Server logic
server <- function(input, output,session) {
  
  observeEvent(input$obs,{if (input$obs <=800){output$distPlot <- renderText({
    (input$obs)
  })} else {output$distPlot <- renderText({"TOO MUCH"})}})
  
  updateProgressBar(session = session, id = "pb8", value = input$slider, total = 5000)
}


# Complete app with UI and server components
shinyApp(ui, server)


