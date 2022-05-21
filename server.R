server <- function(input, output, session) {
  AlchemistW <- reactiveVal(0)
  observeEvent(input$AlchemistWord, {
    AlchemistW(1)
  })

  AlchemistFA <- reactiveVal(0)
  observeEvent(input$AlchemistFAwe, {
    AlchemistFA(1)
  })

  FarrierW <- reactiveVal(0)
  observeEvent(input$FarrierWord, {
    FarrierW(1)
  })

  FarrierFA <- reactiveVal(0)
  observeEvent(input$FarrierFAwe, {
    FarrierFA(1)
  })

  TavernW <- reactiveVal(0)
  observeEvent(input$TavernWord, {
    TavernW(1)
  })

  TavernFA <- reactiveVal(0)
  observeEvent(input$TavernFAwe, {
    TavernFA(1)
  })

  TraderW <- reactiveVal(0)
  observeEvent(input$TraderWord, {
    TraderW(1)
  })

  TraderFA <- reactiveVal(0)
  observeEvent(input$TraderFAwe, {
    TraderFA(1)
  })

  GoToShopCounter <- reactiveVal(0)
  observeEvent(input$GoToShopping, {
    GoToShopCounter(1)
  })

  GoToTrainCounter <- reactiveVal(0)
  observeEvent(input$GoToTraining, {
    GoToTrainCounter(1)
  })

  GoToHealCounter <- reactiveVal(0)
  observeEvent(input$GoToHealing, {
    GoToHealCounter(1)
  })

  GoToExploreCounter <- reactiveVal(0)
  observeEvent(input$GoToExploring, {
    GoToExploreCounter(1)
  })

  GoToBankCounter <- reactiveVal(0)
  observeEvent(input$GoToBanking, {
    GoToBankCounter(1)
  })



  observeEvent(input$AlchemistReset, {
    AlchemistW(0)
    AlchemistFA(0)
    FarrierW(0)
    FarrierFA(0)
    TavernW(0)
    TavernFA(0)
    TraderW(0)
    TraderFA(0)
  })

  observeEvent(input$FarrierReset, {
    AlchemistW(0)
    AlchemistFA(0)
    FarrierW(0)
    FarrierFA(0)
    TavernW(0)
    TavernFA(0)
    TraderW(0)
    TraderFA(0)
  })

  observeEvent(input$TavernReset, {
    AlchemistW(0)
    AlchemistFA(0)
    FarrierW(0)
    FarrierFA(0)
    TavernW(0)
    TavernFA(0)
    TraderW(0)
    TraderFA(0)
  })

  observeEvent(input$TraderReset, {
    AlchemistW(0)
    AlchemistFA(0)
    FarrierW(0)
    FarrierFA(0)
    TavernW(0)
    TavernFA(0)
    TraderW(0)
    TraderFA(0)
  })

  observeEvent(input$BackToTown1, {
    GoToShopCounter(0)
    GoToTrainCounter(0)
    GoToHealCounter(0)
    GoToExploreCounter(0)
    GoToBankCounter(0)
  })

  observeEvent(input$BackToTown2, {
    GoToShopCounter(0)
    GoToTrainCounter(0)
    GoToHealCounter(0)
    GoToExploreCounter(0)
    GoToBankCounter(0)
  })

  observeEvent(input$BackToTown3, {
    GoToShopCounter(0)
    GoToTrainCounter(0)
    GoToHealCounter(0)
    GoToExploreCounter(0)
    GoToBankCounter(0)
  })

  observeEvent(input$BackToTown4, {
    GoToShopCounter(0)
    GoToTrainCounter(0)
    GoToHealCounter(0)
    GoToExploreCounter(0)
    GoToBankCounter(0)
  })

  observeEvent(input$BackToTown5, {
    GoToShopCounter(0)
    GoToTrainCounter(0)
    GoToHealCounter(0)
    GoToExploreCounter(0)
    GoToBankCounter(0)
  })

  MinutesGoneBy<- reactiveVal(50)
  HourOfDay <- reactiveVal(5)
  DaysElapsed <- reactiveVal(1)
  Switch <- reactiveVal(1)
  AmPmToggle <- reactiveVal("pm")
  HourTracker <- reactiveVal(17)
  
  observe({
    invalidateLater(25,session)
    isolate({
      MinutesGoneBy(MinutesGoneBy()+1)
      if(as.numeric(MinutesGoneBy())==60){
        MinutesGoneBy(0)
        HourOfDay(HourOfDay()+1)
        HourTracker(HourTracker()+1)
      }
      if(as.numeric(HourOfDay()) == 13){
        MinutesGoneBy(0)
        HourOfDay(1)
      }
      if (as.numeric(HourOfDay()) == 12 & as.numeric(MinutesGoneBy()) == 0) {
        Switch(Switch()+1)
      }
      if(as.numeric(Switch()) %% 2 == 0){
        AmPmToggle("am")
      } else {
        AmPmToggle("pm")
      }
      if (as.numeric(HourTracker()) == 24) {
        HourTracker(0)
        DaysElapsed(DaysElapsed()+1)
      }
      
      if(nchar(MinutesGoneBy()) == 2){
        output$DateTime <- renderText({
          paste0(HourOfDay(),":",MinutesGoneBy(),"  ",AmPmToggle(),"  ",DaysElapsed())
        })
      } else {
        output$DateTime <- renderText({
          paste0(HourOfDay(),":",0,MinutesGoneBy(),"  ",AmPmToggle(),"  ",DaysElapsed())
        })
      }
    })
  })
  
  output$SaviorOfFarthingham <- renderUI({
    if (as.numeric(GoToShopCounter()) == 0 & as.numeric(GoToHealCounter()) == 0 & as.numeric(GoToTrainCounter()) == 0 & as.numeric(GoToExploreCounter()) == 0 & as.numeric(GoToBankCounter()) == 0) {
      div(mainPanel(
        width = 12,
        fluidRow(
          column(
            width = 12,
            align = "center",
            h2("Welcome to Farthingham", style = "color: #00ff00; font-family: papyrus; font-weight: bolder; font-size: 30px")
          )
        ),
        fluidRow(
          column(
            width = 12,
            align = "center",
            actionButton("GoToBanking", "Bank", class = "btn-link btn-lg")
          )
        ),
        fluidRow(
          column(
            width = 12,
            align = "center",
            actionButton("GoToExploring", "Explore", class = "btn-link btn-lg")
          )
        ),
        fluidRow(
          column(
            width = 12,
            align = "center",
            actionButton("GoToHealing", "Heal", class = "btn-link btn-lg")
          )
        ),
        fluidRow(
          column(
            width = 12,
            align = "center",
            actionButton("GoToShopping", "Shop", class = "btn-link btn-lg")
          )
        ),
        fluidRow(
          column(
            width = 12,
            align = "center",
            actionButton("GoToTraining", "Train", class = "btn-link btn-lg")
          )
        )
      ))
    } else if (as.numeric(GoToShopCounter()) == 1 & as.numeric(AlchemistW()) == 0 & as.numeric(AlchemistFA()) == 0 & as.numeric(FarrierW()) == 0 & as.numeric(FarrierFA()) == 0 & as.numeric(TavernW()) == 0 & as.numeric(TavernFA()) == 0 & as.numeric(TraderW()) == 0 & as.numeric(TraderFA()) == 0) {
      div(mainPanel(
        width = 12,
        br(),
        fluidRow(
          column(
            width = 6,
            align = "right",
            actionButton("AlchemistWord", "Alchemist", class = "btn-link btn-lg", style = "padding:24px;")
          ),
          column(
            width = 6,
            align = "left",
            actionButton("AlchemistFAwe", "", class = "btn-link btn-lg", icon = icon("mortar-pestle", verify_fa = FALSE))
          )
        ),
        br(),
        fluidRow(
          column(
            width = 6,
            align = "right",
            actionButton("FarrierWord", "Farrier", class = "btn-link btn-lg", style = "padding:24px;")
          ),
          column(
            width = 6,
            align = "left",
            actionButton("FarrierFAwe", "", class = "btn-link btn-lg", icon = icon("horse", verify_fa = FALSE))
          )
        ),
        br(),
        fluidRow(
          column(
            width = 6,
            align = "right",
            actionButton("TavernWord", "Tavern", class = "btn-link btn-lg", style = "padding:24px;")
          ),
          column(
            width = 6,
            align = "left",
            actionButton("TavernFAwe", "", class = "btn-link btn-lg", icon = icon("beer-mug-empty", verify_fa = FALSE))
          )
        ),
        br(),
        fluidRow(
          column(
            width = 6,
            align = "right",
            actionButton("TraderWord", "Trader", class = "btn-link btn-lg", style = "padding:24px;")
          ),
          column(
            width = 6,
            align = "left",
            actionButton("TraderFAwe", "", class = "btn-link btn-lg", icon = icon("scale-balanced", verify_fa = FALSE))
          )
        ),
        br(),
        br(),
        br(),
        br(),
        fluidRow(
          column(
            width = 12,
            align = "center",
            actionButton("BackToTown1", "Leave Shops", class = "btn-link btn-lg")
          )
        )
      ))
    } else if (as.numeric(AlchemistW()) == 1 | as.numeric(AlchemistFA()) == 1) {
      div(mainPanel(
        h3("Alchemist has been clicked."),
        actionButton("AlchemistReset", "Back To Shops")
      ))
    } else if (as.numeric(FarrierW()) == 1 | as.numeric(FarrierFA()) == 1) {
      div(mainPanel(
        h3("Farrier has been clicked."),
        actionButton("FarrierReset", "Back To Shops")
      ))
    } else if (as.numeric(TavernW()) == 1 | as.numeric(TavernFA()) == 1) {
      div(mainPanel(
        h3("Tavern has been clicked."),
        actionButton("TavernReset", "Back To Shops")
      ))
    } else if (as.numeric(TraderW()) == 1 | as.numeric(TraderFA()) == 1) {
      div(mainPanel(
        h3("Trader has been clicked."),
        actionButton("TraderReset", "Back To Shops")
      ))
    } else if (as.numeric(GoToTrainCounter()) == 1) {
      div(mainPanel(
        h3("Training has been clicked."),
        actionButton("BackToTown2", "Leave Training", class = "btn-link btn-lg")
      ))
    } else if (as.numeric(GoToHealCounter()) == 1) {
      div(mainPanel(
        h3("Healing has been clicked."),
        actionButton("BackToTown3", "Leave Healing", class = "btn-link btn-lg")
      ))
    } else if (as.numeric(GoToExploreCounter()) == 1) {
      div(mainPanel(
        h3("Exploring has been clicked."),
        actionButton("BackToTown4", "Leave Exploring", class = "btn-link btn-lg")
      ))
    } else if (as.numeric(GoToBankCounter()) == 1) {
      div(mainPanel(
        h3("Banking has been clicked."),
        actionButton("BackToTown4", "Leave Banking", class = "btn-link btn-lg")
      ))
    }
  })
}
