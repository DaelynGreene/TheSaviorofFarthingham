ui <- fluidPage(
  sliderInput("obs", "Number of observations:",
              min = 0, max = 1000, value = 500
  ),
  textOutput("distPlot")
)

# Server logic
server <- function(input, output) {
  
  observeEvent(input$obs,{if (input$obs <=800){output$distPlot <- renderText({
    (input$obs)
  })} else {output$distPlot <- renderText({("TOO MUCH")})}})
  
  
}


# Complete app with UI and server components
shinyApp(ui, server)