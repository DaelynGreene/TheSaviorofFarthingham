library(shiny)
library(shinyWidgets)
ui <- fluidPage(
  br(),
  br(),
  uiOutput("sliders1"),
  uiOutput("sliders2"),
  uiOutput("sliders3"),
  uiOutput("button")
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
      paste("Skill 1:",input$obs1),
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
      paste("Skill 2:",input$obs2),
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
      paste("Skill 3:",input$obs3),
      min = 0,
      max = min(10,20-sum(input$obs1,input$obs2)),
      value = if (is.null(input$obs3)) {0} else{input$obs3},
      step = 1)
  )})})
    output$button <- renderUI({  
    fluidRow({
        column(
          width = 12,
          align = "center",
          h4(paste(20-sum(input$obs1,input$obs2,input$obs3),"skill points remaining.")),
          actionButton("AdamsRandomize","Randomize")
        )
      })
    })
  })
  observeEvent(input$AdamsRandomize,{
    Numbers <<- sample(1:10,3,replace = T)
    if (sum(Numbers) != 20) {
      Remove <<- sample(1:3,1)
      TwoNumberSum <<- sum(Numbers[-Remove])
      while(TwoNumberSum<10){
        Numbers <<- sample(1:10,3,replace = T)
        Remove <<- sample(1:3,1)
        TwoNumberSum <<- sum(Numbers[-Remove])
      }
      Numbers[Remove] <<- 20-TwoNumberSum
    }
    
    output$sliders1 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
            "obs1",
            paste("Skill 1:",input$obs1),
            min = 0,
            max = Numbers[1],
            value = Numbers[1],
            step = 1)
        )})})
    output$sliders2 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
            "obs2",
            paste("Skill 2:",input$obs2),
            min = 0,
            max = Numbers[2],
            value = Numbers[2],
            step = 1)
        )})})
    output$sliders3 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
            "obs3",
            paste("Skill 3:",input$obs3),
            min = 0,
            max = Numbers[3],
            value = Numbers[3],
            step = 1)
        )})})
   
  })
}
shinyApp(ui, server)