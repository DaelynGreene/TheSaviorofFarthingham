library(shiny)

ui <- fluidPage(
  actionButton('my_button', 'click to change screen'),
  uiOutput('screen')
)

server <- function(input, output, session) {
  output$screen <- renderUI({
    if (input$my_button == 0) {
      div(
        actionButton('randomButton', 'asdfasdfasdf'),
        'tersaasdfasdfasdfasdfasdfasdf'
      )
    } else if (input$my_button == 1) {
      div(
        actionButton('randomButton2', 'fdsfdeaffd'),
        '6546516514651651'
      )
    }
  })
}

shinyApp(ui, server)