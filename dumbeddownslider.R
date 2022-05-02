library(shiny)
library(shinyWidgets)
ui <- fluidPage(
  uiOutput("sliders1"),
  tags$style(
    "@import url(https://use.fontawesome.com/releases/v6.1.1/css/all.css);",
    HTML(".fa{font-size: 25px; color:#000000; align-middle}")
  )
)
server <- function(input, output) {
    output$sliders1 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs1",
            paste("CAN YOU CENTER THE TITLE OVER THE SLIDER?????:", input$obs1),
            min = 0,
            max = 10,
            value = 0,
            step = 1
          )
        ),
        column(
          width = 6,
          align = "left",
          actionButton("MaxHealthQuestion", "", class = "btn-link btn-lg", icon = icon("circle-question", class = "fa-regular", verify_fa = FALSE))
        )
      )
    })
}

shinyApp(ui, server)
