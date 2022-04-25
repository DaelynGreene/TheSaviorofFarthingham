ui <- fluidPage(
  sliderInput("obs", "Number of observations:",
              min = 0, max = 1000, value = 500
  ),
  uiOutput("words")
)

# Server logic
server <- function(input, output) {
  
  observeEvent(input$obs,{if (input$obs <=800){output$words <- renderText({
    (input$obs)
  })} else {output$words <- renderUI({h2("TOO MUCH",style = "color: red; font-family: papyrus; font-weight: bolder; font-size: 30px")})}})
  
  
}


# Complete app with UI and server components
shinyApp(ui, server)