library(shiny)
library(shinyWidgets)
ui <- fluidPage(
  uiOutput("sliders1"),
  uiOutput("sliders2"),
  uiOutput("sliders3"),
  uiOutput("sliders4"),
  uiOutput("sliders5"),
  uiOutput("sliders6"),
  uiOutput("sliders7"),
  uiOutput("button"),
  tags$style(
    "@import url(https://use.fontawesome.com/releases/v6.1.1/css/all.css);",
    HTML(".fa{font-size: 25px; color:#000000; align-middle}"),
    HTML(".modal{text-align:center}")
  )
)
server <- function(input, output) {
  observeEvent(input$obs1 | input$obs2 | input$obs3 | input$obs4 | input$obs5 | input$obs6 | input$obs7, {
    output$sliders2 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs2",
            paste("Strength:", input$obs2),
            min = 0,
            max = min(10, 25 - sum(input$obs1, input$obs3, input$obs4, input$obs5, input$obs6, input$obs7)),
            value = if (is.null(input$obs2)) {
              0
            } else {
              input$obs2
            },
            step = 1
          )
        ),
        column(
          width = 6,
          align = "left",
          actionButton("StrengthQuestion", "", class = "btn-link btn-lg", icon = icon("circle-question", class = "fa-regular", verify_fa = FALSE))
        )
      )
    })
  observeEvent(input$StrengthQuestion,{
    showModal(modalDialog(
      title = "Strength Info",
      div(
        "Strength determines the amount of things you can carry without being slowed down. Every item has a weight (this isn't some fantasy world); once you clear your strength limit you start to slow down. \"How much do I slow down?\" you're probably asking yourself. Well... don't ask me. I don’t know how the universe works or why it works how it works, all I know is the more crap you carry the slower you go."
      )
    ))
  })
})
}


shinyApp(ui, server)
