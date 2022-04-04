library(shiny)

ui <- fluidPage(
  uiOutput("screen")
)

server <- function(input, output, session) {
  
  ClickCounter1 <- reactiveValues(NumberClicks1 = 0)
  observeEvent(input$a, {ClickCounter1$NumberClicks1 <- ClickCounter1$NumberClicks1 + 1})  
  
  ClickCounter2 <- reactiveValues(NumberClicks2 = 0)
  observeEvent(input$b, {ClickCounter2$NumberClicks2 <- ClickCounter2$NumberClicks2 + 1})
  
  observeEvent(input$reset1, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0})
  
  observeEvent(input$reset2, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0})
  
  output$screen <- renderUI({
    if (ClickCounter1$NumberClicks1 == 0 & ClickCounter2$NumberClicks2 == 0) {
      div(mainPanel(actionButton('a', 'A'),
      actionButton('b', 'B')))
    } else if (ClickCounter1$NumberClicks1 == 1) {
      div(mainPanel(h3("Button A was clicked."),
      actionButton("reset1","Reset")))
    } else {
      div(mainPanel(h3("Button B was clicked."),
      actionButton("reset2","Reset")))
    }
  })
}

shinyApp(ui, server)



# arrow-left