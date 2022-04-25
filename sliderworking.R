library(shiny)
library(shinyWidgets)
ui <- fluidPage(
  br(),
  br(),
  uiOutput("sliders1"),
  uiOutput("sliders2"),
  uiOutput("sliders3"),
  uiOutput("words")
)
server <- function(input, output) {
  observeEvent(input$obs1 | input$obs2 | input$obs3,{
    output$sliders1 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
      "obs1",
      "Skill 1:",
      min = 0,
      max = min(10,20-sum(input$obs2,input$obs3)),
      value = if (is.null(input$obs1)) {0} else{input$obs1},
      step = 1)
    )})})
    output$sliders2 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
      sliderInput(
      "obs2",
      "Skill 2:",
      min = 0,
      max = min(10,20-sum(input$obs1,input$obs3)),
      value = if (is.null(input$obs2)) {0} else{input$obs2},
      step = 1)
      )})})
    output$sliders3 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
      sliderInput(
      "obs3",
      "Skill 3:",
      min = 0,
      max = min(10,20-sum(input$obs1,input$obs2)),
      value = if (is.null(input$obs3)) {0} else{input$obs3},
      step = 1)
  )})})
    output$words <- renderUI({  
    fluidRow({
        column(
          width = 12,
          align = "center",
          h4(paste(20-sum(input$obs1,input$obs2,input$obs3),"skill points remaining.")),
          actionButton("Randomize","Randomize")
        )
      })
    })
  })
  # observeEvent(input$Randomize,{
  #   
  # })
}
shinyApp(ui, server)