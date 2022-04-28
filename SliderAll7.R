library(shiny)
library(shinyWidgets)
ui <- fluidPage(
  uiOutput("numbertest"),
  uiOutput("sliders1"),
  uiOutput("sliders2"),
  uiOutput("sliders3"),
  uiOutput("sliders4"),
  uiOutput("sliders5"),
  uiOutput("sliders6"),
  uiOutput("sliders7"),
  uiOutput("button"),
  
  
  tags$style("@import url(https://use.fontawesome.com/releases/v6.1.1/css/all.css);",
             HTML(".fa{font-size: 25px; color:#000000; align-middle}"),
             HTML("#obs1{text-align:center}")
  )
  
)
server <- function(input, output) {
  
  Numbers <- c(0,0,0,0,0,0,0)
  
  output$button <- renderUI({  
    fluidRow({
      column(
        width = 12,
        align = "center",
        h4(paste(25-sum(input$obs1,input$obs2,input$obs3,input$obs4,input$obs5,input$obs6,input$obs7),"skill points remaining.")),
        actionButton("AdamsRandomize","Randomize")
      )
    })
  })
  
  output$numbertest <- renderUI({
    fluidRow(
      column(
        width = 12,
        align = "center",
        h4(Numbers[1],Numbers[2],Numbers[3],Numbers[4],Numbers[5],Numbers[6],Numbers[7])
      )
    )
  })
  
  observeEvent(input$AdamsRandomize,{
    Numbers <- sample(0:10,7,replace = T)
    while(sum(Numbers) != 25){
      Numbers <- sample(0:10,7,replace = T)
    }
  })
  
  print(Numbers)
  
  observeEvent(input$obs1 | input$obs2 | input$obs3 | input$obs4 | input$obs5 |input$obs6 | input$obs7 | input$AdamsRandomize,{
    output$sliders1 <- renderUI({
        fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs1",
            paste("Maximum Health:",input$obs1),
            min = 0,
            max = min(10,25-sum(input$obs2,input$obs3,input$obs4,input$obs5,input$obs6,input$obs7)),
            value = if (sum(Numbers) == 25) {Numbers[1]} else if (is.null(input$obs1)) {0} else {input$obs1},
            step = 1
            )
        ),
        column(
          width = 6,
          align = "left",
          actionButton("MaxHealth?", "", class = "btn-link btn-lg", icon = icon("circle-question", class = "fa-regular", verify_fa = FALSE))
        )
        )
    })
    output$sliders2 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
            "obs2",
            paste("Strength:",input$obs2),
            min = 0,
            max = min(10,25-sum(input$obs1,input$obs3,input$obs4,input$obs5,input$obs6,input$obs7)),
            value = if (is.null(input$obs2)) {0} else if (sum(Numbers) == 25) {Numbers[2]} else{input$obs2},
            step = 1
            )
        )})})
    output$sliders3 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
            "obs3",
            paste("Agility:",input$obs3),
            min = 0,
            max = min(10,25-sum(input$obs2,input$obs1,input$obs4,input$obs5,input$obs6,input$obs7)),
            value = if (is.null(input$obs3)) {0} else if (sum(Numbers) == 25) {Numbers[3]} else{input$obs3},
            step = 1)
        )})})
    output$sliders4 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
            "obs4",
            paste("Stealth:",input$obs4),
            min = 0,
            max = min(10,25-sum(input$obs2,input$obs3,input$obs1,input$obs5,input$obs6,input$obs7)),
            value = if (is.null(input$obs4)) {0} else if (sum(Numbers) == 25) {Numbers[4]} else{input$obs4},
            step = 1)
        )})})
    output$sliders5 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
            "obs5",
            paste("Speed:",input$obs5),
            min = 0,
            max = min(10,25-sum(input$obs2,input$obs3,input$obs4,input$obs1,input$obs6,input$obs7)),
            value = if (is.null(input$obs5)) {0} else if (sum(Numbers) == 25) {Numbers[5]} else{input$obs5},
            step = 1)
        )})})
    output$sliders6 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
            "obs6",
            paste("Endurance:",input$obs6),
            min = 0,
            max = min(10,25-sum(input$obs2,input$obs3,input$obs4,input$obs5,input$obs1,input$obs7)),
            value = if (is.null(input$obs6)) {0} else if (sum(Numbers) == 25) {Numbers[6]} else{input$obs6},
            step = 1)
        )})})
    output$sliders7 <- renderUI({
      fluidRow({
        column(
          width = 12,
          align = "center",
          sliderInput(
            "obs7",
            paste("Intelligence:",input$obs7),
            min = 0,
            max = min(10,25-sum(input$obs2,input$obs3,input$obs4,input$obs5,input$obs6,input$obs1)),
            value = if (is.null(input$obs7)) {0} else if (sum(Numbers) == 25) {Numbers[7]} else{input$obs7},
            step = 1)
        )})})
      })
  

# output$sliders1 <- renderUI({
#       fluidRow({
#         column(
#           width = 12,
#           align = "center",
#           sliderInput(
#             "obs1",
#             paste("Maximum Health:",input$obs1),
#             min = 0,
#             max = Numbers[1],
#             value = Numbers[1],
#             step = 1)
#         )})})
#     output$sliders2 <- renderUI({
#       fluidRow({
#         column(
#           width = 12,
#           align = "center",
#           sliderInput(
#             "obs2",
#             paste("Strength:",input$obs2),
#             min = 0,
#             max = Numbers[2],
#             value = Numbers[2],
#             step = 1)
#         )})})
#     output$sliders3 <- renderUI({
#       fluidRow({
#         column(
#           width = 12,
#           align = "center",
#           sliderInput(
#             "obs3",
#             paste("Agility:",input$obs3),
#             min = 0,
#             max = Numbers[3],
#             value = Numbers[3],
#             step = 1)
#         )})})
#     output$sliders4 <- renderUI({
#       fluidRow({
#         column(
#           width = 12,
#           align = "center",
#           sliderInput(
#             "obs4",
#             paste("Stealth:",input$obs4),
#             min = 0,
#             max = Numbers[4],
#             value = Numbers[4],
#             step = 1)
#         )})})
#     output$sliders5 <- renderUI({
#       fluidRow({
#         column(
#           width = 12,
#           align = "center",
#           sliderInput(
#             "obs5",
#             paste("Speed:",input$obs5),
#             min = 0,
#             max = Numbers[5],
#             value = Numbers[5],
#             step = 1)
#         )})})
#     output$sliders6 <- renderUI({
#       fluidRow({
#         column(
#           width = 12,
#           align = "center",
#           sliderInput(
#             "obs6",
#             paste("Endurance:",input$obs6),
#             min = 0,
#             max = Numbers[6],
#             value = Numbers[6],
#             step = 1)
#         )})})
#     output$sliders7 <- renderUI({
#       fluidRow({
#         column(
#           width = 12,
#           align = "center",
#           sliderInput(
#             "obs7",
#             paste("Intelligence:",input$obs7),
#             min = 0,
#             max = Numbers[7],
#             value = Numbers[7],
#             step = 1)
#         )})})
# 
}




# tags$head(tags$style(HTML('.js-irs-0 .irs-single, .js-irs-0 .irs-bar-edge, .js-irs-0 .irs-bar {
#                                                   background: #000069;
#                                                   border-top: 1px solid #000039 ;
#                                                   border-bottom: 1px solid #000039 ;}
# 
#                             /* changes the colour of the number tags */
#                            .irs-from, .irs-to, .irs-single { background: #000069 }'
# ))
# )


# 
# showModal(modalDialog(
#   title = "Important Message",
#   div(
#     "Your account worth after ", paste(input$years), "years is", paste0("$",round(NewAccountWorth,2))
#   )
# ))













shinyApp(ui, server)