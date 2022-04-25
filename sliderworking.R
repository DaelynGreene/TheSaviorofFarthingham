library(shiny)
library(shinyWidgets)

ui <- fluidPage(
  
  uiOutput("sliders1"),
  uiOutput("sliders2"),
  uiOutput("sliders3"),
  
  uiOutput("words")
)

# Server logic
server <- function(input, output) {
  
  observeEvent(input$obs1 | input$obs2 | input$obs3,{if (sum(input$obs1,input$obs2,input$obs3) <=20){output$words <- renderText({
    (sum(input$obs1,input$obs2,input$obs3))
  })} else {output$words <- renderUI({h2("TOO MUCH",style = "color: red; font-family: papyrus; font-weight: bolder; font-size: 30px")})}})
  
  
  observeEvent(input$obs1 | input$obs2 | input$obs3,{
    output$sliders1 <- renderUI({sliderInput(
      "obs1",
      "Number of observations 1:",
      min = 0,
      max = min(10,20-sum(input$obs2,input$obs3)),
      value = if (is.null(input$obs1)) {0} else{input$obs1},
      step = 1)
    })
    output$sliders2 <- renderUI({sliderInput(
      "obs2",
      "Number of observations 2:",
      min = 0,
      max = min(10,20-sum(input$obs1,input$obs3)),
      value = if (is.null(input$obs2)) {0} else{input$obs2},
      step = 1)
    })
    output$sliders3 <- renderUI({sliderInput(
      "obs3",
      "Number of observations 3:",
      min = 0,
      max = min(10,20-sum(input$obs1,input$obs2)),
      value = if (is.null(input$obs3)) {0} else{input$obs3},
      step = 1)
    })
  })
  
}


# Complete app with UI and server components
shinyApp(ui, server)