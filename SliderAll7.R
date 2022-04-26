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
  uiOutput("button")
)
server <- function(input, output) {
  observeEvent(input$obs1 | input$obs2 | input$obs3 | input$obs4 | input$obs5 |input$obs6 | input$obs7,{
    output$sliders1 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
            "obs1",
            paste("Skill 1:",input$obs1),
            min = 0,
            max = min(10,45-sum(input$obs2,input$obs3,input$obs4,input$obs5,input$obs6,input$obs7)),
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
            max = min(10,45-sum(input$obs1,input$obs3,input$obs4,input$obs5,input$obs6,input$obs7)),
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
            max = min(10,45-sum(input$obs2,input$obs1,input$obs4,input$obs5,input$obs6,input$obs7)),
            value = if (is.null(input$obs3)) {0} else{input$obs3},
            step = 1)
        )})})
    output$sliders4 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
            "obs4",
            paste("Skill 4:",input$obs4),
            min = 0,
            max = min(10,45-sum(input$obs2,input$obs3,input$obs1,input$obs5,input$obs6,input$obs7)),
            value = if (is.null(input$obs4)) {0} else{input$obs4},
            step = 1)
        )})})
    output$sliders5 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
            "obs5",
            paste("Skill 5:",input$obs5),
            min = 0,
            max = min(10,45-sum(input$obs2,input$obs3,input$obs4,input$obs1,input$obs6,input$obs7)),
            value = if (is.null(input$obs5)) {0} else{input$obs5},
            step = 1)
        )})})
    output$sliders6 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
            "obs6",
            paste("Skill 6:",input$obs6),
            min = 0,
            max = min(10,45-sum(input$obs2,input$obs3,input$obs4,input$obs5,input$obs1,input$obs7)),
            value = if (is.null(input$obs6)) {0} else{input$obs6},
            step = 1)
        )})})
    output$sliders7 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
            "obs7",
            paste("Skill 7:",input$obs7),
            min = 0,
            max = min(10,45-sum(input$obs2,input$obs3,input$obs4,input$obs5,input$obs6,input$obs1)),
            value = if (is.null(input$obs7)) {0} else{input$obs7},
            step = 1)
        )})})
    output$button <- renderUI({  
    fluidRow({
        column(
          width = 12,
          align = "center",
          h4(paste(45-sum(input$obs1,input$obs2,input$obs3,input$obs4,input$obs5,input$obs6,input$obs7),"skill points remaining.")),
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