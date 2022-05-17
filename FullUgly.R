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
    HTML(".modal{text-align:center}"),
    HTML("#button1{border:none}"),
    HTML("#button2{border:none}"),
    HTML("#button3{border:none}"),
    HTML("#button4{border:none}"),
    HTML("#button5{border:none}"),
    HTML("#button6{border:none}"),
    HTML("#button7{border:none}")
    
    
    
  )
  
  
  
)
server <- function(input, output) {
  output$button <- renderUI({
    fluidRow({
      column(
        width = 12,
        align = "center",
        h4(paste(25 - sum(input$obs1, input$obs2, input$obs3, input$obs4, input$obs5, input$obs6, input$obs7), "skill points remaining.")),
        actionButton("AdamsRandomize", "Randomize")
      )
    })
  })

  observeEvent(input$obs1 | input$obs2 | input$obs3 | input$obs4 | input$obs5 | input$obs6 | input$obs7, {
    output$sliders1 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs1",
            paste("Maximum Health:", input$obs1),
            min = 0,
            max = min(10, 25 - sum(input$obs2, input$obs3, input$obs4, input$obs5, input$obs6, input$obs7)),
            value = if (is.null(input$obs1)) {
              0
            } else {
              input$obs1
            },
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
    output$sliders3 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs3",
            paste("Agility:", input$obs3),
            min = 0,
            max = min(10, 25 - sum(input$obs2, input$obs1, input$obs4, input$obs5, input$obs6, input$obs7)),
            value = if (is.null(input$obs3)) {
              0
            } else {
              input$obs3
            },
            step = 1
          )
        ),
        column(
          width = 6,
          align = "left",
          actionButton("AgilityQuestion", "", class = "btn-link btn-lg", icon = icon("circle-question", class = "fa-regular", verify_fa = FALSE))
        )
      )
    })
    output$sliders4 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs4",
            paste("Stealth:", input$obs4),
            min = 0,
            max = min(10, 25 - sum(input$obs2, input$obs3, input$obs1, input$obs5, input$obs6, input$obs7)),
            value = if (is.null(input$obs4)) {
              0
            } else {
              input$obs4
            },
            step = 1
          )
        ),
        column(
          width = 6,
          align = "left",
          actionButton("StealthQuestion", "", class = "btn-link btn-lg", icon = icon("circle-question", class = "fa-regular", verify_fa = FALSE))
        )
      )
    })
    output$sliders5 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs5",
            paste("Speed:", input$obs5),
            min = 0,
            max = min(10, 25 - sum(input$obs2, input$obs3, input$obs4, input$obs1, input$obs6, input$obs7)),
            value = if (is.null(input$obs5)) {
              0
            } else {
              input$obs5
            },
            step = 1
          )
        ),
        column(
          width = 6,
          align = "left",
          actionButton("SpeedQuestion", "", class = "btn-link btn-lg", icon = icon("circle-question", class = "fa-regular", verify_fa = FALSE))
        )
      )
    })
    output$sliders6 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs6",
            paste("Endurance:", input$obs6),
            min = 0,
            max = min(10, 25 - sum(input$obs2, input$obs3, input$obs4, input$obs5, input$obs1, input$obs7)),
            value = if (is.null(input$obs6)) {
              0
            } else {
              input$obs6
            },
            step = 1
          )
        ),
        column(
          width = 6,
          align = "left",
          actionButton("EnduranceQuestion", "", class = "btn-link btn-lg", icon = icon("circle-question", class = "fa-regular", verify_fa = FALSE))
        )
      )
    })
    output$sliders7 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs7",
            paste("Intelligence:", input$obs7),
            min = 0,
            max = min(10, 25 - sum(input$obs2, input$obs3, input$obs4, input$obs5, input$obs6, input$obs1)),
            value = if (is.null(input$obs7)) {
              0
            } else {
              input$obs7
            },
            step = 1
          )
        ),
        column(
          width = 6,
          align = "left",
          actionButton("IntelligenceQuestion", "", class = "btn-link btn-lg", icon = icon("circle-question", class = "fa-regular", verify_fa = FALSE))
        )
      )
    })
  })
  observeEvent(input$AdamsRandomize, {
    Numbers <- sample(0:10, 7, replace = T)
    while (sum(Numbers) != 25) {
      Numbers <- sample(0:10, 7, replace = T)
    }
    output$sliders1 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs1",
            paste("Maximum Health:", input$obs1),
            min = 0,
            max = Numbers[1],
            value = Numbers[1],
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
    output$sliders2 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs2",
            paste("Strength:", input$obs2),
            min = 0,
            max = Numbers[2],
            value = Numbers[2],
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
    output$sliders3 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs3",
            paste("Agility:", input$obs3),
            min = 0,
            max = Numbers[3],
            value = Numbers[3],
            step = 1
          )
        ),
        column(
          width = 6,
          align = "left",
          actionButton("AgilityQuestion", "", class = "btn-link btn-lg", icon = icon("circle-question", class = "fa-regular", verify_fa = FALSE))
        )
      )
    })
    output$sliders4 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs4",
            paste("Stealth:", input$obs4),
            min = 0,
            max = Numbers[4],
            value = Numbers[4],
            step = 1
          )
        ),
        column(
          width = 6,
          align = "left",
          actionButton("StealthQuestion", "", class = "btn-link btn-lg", icon = icon("circle-question", class = "fa-regular", verify_fa = FALSE))
        )
      )
    })
    output$sliders5 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs5",
            paste("Speed:", input$obs5),
            min = 0,
            max = Numbers[5],
            value = Numbers[5],
            step = 1
          )
        ),
        column(
          width = 6,
          align = "left",
          actionButton("SpeedQuestion", "", class = "btn-link btn-lg", icon = icon("circle-question", class = "fa-regular", verify_fa = FALSE))
        )
      )
    })
    output$sliders6 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs6",
            paste("Endurance:", input$obs6),
            min = 0,
            max = Numbers[6],
            value = Numbers[6],
            step = 1
          )
        ),
        column(
          width = 6,
          align = "left",
          actionButton("EnduranceQuestion", "", class = "btn-link btn-lg", icon = icon("circle-question", class = "fa-regular", verify_fa = FALSE))
        )
      )
    })
    output$sliders7 <- renderUI({
      fluidRow(
        column(
          width = 6,
          align = "right",
          sliderInput(
            "obs7",
            paste("Intelligence:", input$obs7),
            min = 0,
            max = Numbers[7],
            value = Numbers[7],
            step = 1
          )
        ),
        column(
          width = 6,
          align = "left",
          actionButton("IntelligenceQuestion", "", class = "btn-link btn-lg", icon = icon("circle-question", class = "fa-regular", verify_fa = FALSE))
        )
      )
    })
  })
  
  observeEvent(input$MaxHealthQuestion,{
    showModal(modalDialog(
        title = "Maximum Health Info",
        div(
          "Maximum Health is exactly what it sounds like. This stat controls how much damage you can take before you almost die (you're the hero of this story, you can't *die* die).",
          align = "center"
        ),
        footer = actionButton("button1","",icon = icon("thumbs-up"))
      ))
  })
  observeEvent(input$StrengthQuestion,{
    showModal(modalDialog(
      title = "Strength Info",
      div(
        "Strength determines the amount of things you can carry without being slowed down. Every item has a weight (this isn't some fantasy world); once you clear your strength limit you start to slow down. \"How much do I slow down?\" you're probably asking yourself. Well... don't ask me. I don’t know how the universe works or why it works how it works, all I know is the more crap you carry the slower you go."
      ),
      footer = actionButton("button2","",icon = icon("thumbs-up"))
    ))
  })
  observeEvent(input$AgilityQuestion,{
    showModal(modalDialog(
      title = "Agility Info",
      div(
        "Agility determines the likelihood that you successfully dodge an attack. Starting out, you're clumsier than a drunk, but with lots of training, you can grow to become proficient and, eventually, quite skilled."
      ),
      footer = actionButton("button3","",icon = icon("thumbs-up"))
    ))
  })
  observeEvent(input$StealthQuestion,{
    showModal(modalDialog(
      title = "Stealth Info",
      div(
        "Stealth determines the strength of and likelihood that you can successfully launch an ambush or a sneaky first-strike. The first bird may get the worm, but the second mouse gets the cheese. Sometimes it's better to stay in hiding until the action is over."
      ),
      footer = actionButton("button4","",icon = icon("thumbs-up"))
    ))
  })
  observeEvent(input$SpeedQuestion,{
    showModal(modalDialog(
      title = "Speed Info",
      div(
        "Speed determines how fast you can move while exploring the lands of Farthingham."
      ),
      footer = actionButton("button5","",icon = icon("thumbs-up"))
    ))
  })
  observeEvent(input$EnduranceQuestion,{
    showModal(modalDialog(
      title = "Endurance Info",
      div(
        "Endurance determines the amount of actions you can perform without having to rest or eat/use a potion (in combat and in exploration). Endurance also impacts how long you can go without food or water."
      ),
      footer = actionButton("button6","",icon = icon("thumbs-up"))
    ))
  })
  observeEvent(input$IntelligenceQuestion,{
    showModal(modalDialog(
      title = "Intelligence Info",
      div(
        "Intelligence impacts the prices you pay at stores or traders and, in special circumstances, different conversation options you can have. The lower your intelligence, the more likely shopkeeps are to try to take advantage of you. The higher your intelligence, the more pretentiously bombastic your verbiage will become."
      ),
      footer = actionButton("button7","",icon = icon("thumbs-up"))
    ))
  })
  observeEvent(input$button1,{
    removeModal()
  })
  observeEvent(input$button2,{
    removeModal()
  })
  observeEvent(input$button3,{
    removeModal()
  })
  observeEvent(input$button4,{
    removeModal()
  })
  observeEvent(input$button5,{
    removeModal()
  })
  observeEvent(input$button6,{
    removeModal()
  })
  observeEvent(input$button7,{
    removeModal()
  })
  observeEvent(input$button7,{
    removeModal()
  })
}

shinyApp(ui, server)
