server <- function(input, output, session) {
  ShopOption1Counter <- reactiveValues(ShopOption1Clicks = 0)
  observeEvent(input$ShopOption1, {
    ShopOption1Counter$ShopOption1Clicks <- 1
  })

  ShopOption2Counter <- reactiveValues(ShopOption2Clicks = 0)
  observeEvent(input$ShopOption1b, {
    ShopOption2Counter$ShopOption2Clicks <- 1
  })

  ShopOption3Counter <- reactiveValues(ShopOption3Clicks = 0)
  observeEvent(input$ShopOption2, {
    ShopOption3Counter$ShopOption3Clicks <- 1
  })

  ShopOption4Counter <- reactiveValues(ShopOption4Clicks = 0)
  observeEvent(input$ShopOption2b, {
    ShopOption4Counter$ShopOption4Clicks <- 1
  })

  ShopOption5Counter <- reactiveValues(ShopOption5Clicks = 0)
  observeEvent(input$ShopOption3, {
    ShopOption5Counter$ShopOption5Clicks <- 1
  })

  ShopOption6Counter <- reactiveValues(ShopOption6Clicks = 0)
  observeEvent(input$ShopOption3b, {
    ShopOption6Counter$ShopOption6Clicks <- 1
  })

  ShopOption7Counter <- reactiveValues(ShopOption7Clicks = 0)
  observeEvent(input$ShopOption4, {
    ShopOption7Counter$ShopOption7Clicks <- 1
  })

  ShopOption8Counter <- reactiveValues(ShopOption8Clicks = 0)
  observeEvent(input$ShopOption4b, {
    ShopOption8Counter$ShopOption8Clicks <- 1
  })

  ShopOption9Counter <- reactiveValues(ShopOption9Clicks = 0)
  observeEvent(input$ShopOption5, {
    ShopOption9Counter$ShopOption9Clicks <- 1
  })

  ShopOption10Counter <- reactiveValues(ShopOption10Clicks = 0)
  observeEvent(input$ShopOption5b, {
    ShopOption10Counter$ShopOption10Clicks <- 1
  })

  GoToShopCounter <- reactiveValues(GoShopping = 0)
  observeEvent(input$GoToShopping, {
    GoToShopCounter$GoShopping <- 1
  })



  observeEvent(input$ShopOption1Reset, {
    ShopOption1Counter$ShopOption1Clicks <- 0
    ShopOption2Counter$ShopOption2Clicks <- 0
    ShopOption3Counter$ShopOption3Clicks <- 0
    ShopOption4Counter$ShopOption4Clicks <- 0
    ShopOption5Counter$ShopOption5Clicks <- 0
    ShopOption6Counter$ShopOption6Clicks <- 0
    ShopOption7Counter$ShopOption7Clicks <- 0
    ShopOption8Counter$ShopOption8Clicks <- 0
    ShopOption9Counter$ShopOption9Clicks <- 0
    ShopOption10Counter$ShopOption10Clicks <- 0
  })

  observeEvent(input$ShopOption2Reset, {
    ShopOption1Counter$ShopOption1Clicks <- 0
    ShopOption2Counter$ShopOption2Clicks <- 0
    ShopOption3Counter$ShopOption3Clicks <- 0
    ShopOption4Counter$ShopOption4Clicks <- 0
    ShopOption5Counter$ShopOption5Clicks <- 0
    ShopOption6Counter$ShopOption6Clicks <- 0
    ShopOption7Counter$ShopOption7Clicks <- 0
    ShopOption8Counter$ShopOption8Clicks <- 0
    ShopOption9Counter$ShopOption9Clicks <- 0
    ShopOption10Counter$ShopOption10Clicks <- 0
  })

  observeEvent(input$ShopOption3Reset, {
    ShopOption1Counter$ShopOption1Clicks <- 0
    ShopOption2Counter$ShopOption2Clicks <- 0
    ShopOption3Counter$ShopOption3Clicks <- 0
    ShopOption4Counter$ShopOption4Clicks <- 0
    ShopOption5Counter$ShopOption5Clicks <- 0
    ShopOption6Counter$ShopOption6Clicks <- 0
    ShopOption7Counter$ShopOption7Clicks <- 0
    ShopOption8Counter$ShopOption8Clicks <- 0
    ShopOption9Counter$ShopOption9Clicks <- 0
    ShopOption10Counter$ShopOption10Clicks <- 0
  })

  observeEvent(input$ShopOption4Reset, {
    ShopOption1Counter$ShopOption1Clicks <- 0
    ShopOption2Counter$ShopOption2Clicks <- 0
    ShopOption3Counter$ShopOption3Clicks <- 0
    ShopOption4Counter$ShopOption4Clicks <- 0
    ShopOption5Counter$ShopOption5Clicks <- 0
    ShopOption6Counter$ShopOption6Clicks <- 0
    ShopOption7Counter$ShopOption7Clicks <- 0
    ShopOption8Counter$ShopOption8Clicks <- 0
    ShopOption9Counter$ShopOption9Clicks <- 0
    ShopOption10Counter$ShopOption10Clicks <- 0
  })

  observeEvent(input$ShopOption5Reset, {
    ShopOption1Counter$ShopOption1Clicks <- 0
    ShopOption2Counter$ShopOption2Clicks <- 0
    ShopOption3Counter$ShopOption3Clicks <- 0
    ShopOption4Counter$ShopOption4Clicks <- 0
    ShopOption5Counter$ShopOption5Clicks <- 0
    ShopOption6Counter$ShopOption6Clicks <- 0
    ShopOption7Counter$ShopOption7Clicks <- 0
    ShopOption8Counter$ShopOption8Clicks <- 0
    ShopOption9Counter$ShopOption9Clicks <- 0
    ShopOption10Counter$ShopOption10Clicks <- 0
  })

  observeEvent(input$BackToTown, {
    GoToShopCounter$GoShopping <- 0
  })



  output$SaviorOfFarthingham <- renderUI({
    if (GoToShopCounter$GoShopping == 0) {
      div(mainPanel(
        width = 12,
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
            actionButton("GoExploring", "Explore", class = "btn-link btn-lg")
          )
        )
      ))
    } else if (GoToShopCounter$GoShopping == 1 & ShopOption1Counter$ShopOption1Clicks == 0 & ShopOption2Counter$ShopOption2Clicks == 0 & ShopOption3Counter$ShopOption3Clicks == 0 & ShopOption4Counter$ShopOption4Clicks == 0 & ShopOption5Counter$ShopOption5Clicks == 0 & ShopOption6Counter$ShopOption6Clicks == 0 & ShopOption7Counter$ShopOption7Clicks == 0 & ShopOption8Counter$ShopOption8Clicks == 0 & ShopOption9Counter$ShopOption9Clicks == 0 & ShopOption10Counter$ShopOption10Clicks == 0) {
      div(mainPanel(
        width = 12,
        fluidRow(
          column(
            width = 6,
            align = "right",
            actionButton("ShopOption1", "Alchemist", class = "btn-link btn-lg", style = "padding:24px;")
          ),
          column(
            width = 6,
            align = "left",
            actionButton("ShopOption1b", "", class = "btn-link btn-lg", icon = icon("mortar-pestle", verify_fa = FALSE))
          )
        ),
        br(),
        fluidRow(
          column(
            width = 6,
            align = "right",
            actionButton("ShopOption2", "Bank", class = "btn-link btn-lg", style = "padding:24px;")
          ),
          column(
            width = 6,
            align = "left",
            actionButton("ShopOption2b", "", class = "btn-link btn-lg", icon = icon("sack-dollar", verify_fa = FALSE))
          )
        ),
        br(),
        fluidRow(
          column(
            width = 6,
            align = "right",
            actionButton("ShopOption3", "Ferrier", class = "btn-link btn-lg", style = "padding:24px;")
          ),
          column(
            width = 6,
            align = "left",
            actionButton("ShopOption3b", "", class = "btn-link btn-lg", icon = icon("horse", verify_fa = FALSE))
          )
        ),
        br(),
        fluidRow(
          column(
            width = 6,
            align = "right",
            actionButton("ShopOption4", "Tavern", class = "btn-link btn-lg", style = "padding:24px;")
          ),
          column(
            width = 6,
            align = "left",
            actionButton("ShopOption4b", "", class = "btn-link btn-lg", icon = icon("beer-mug-empty", verify_fa = FALSE))
          )
        ),
        br(),
        fluidRow(
          column(
            width = 6,
            align = "right",
            actionButton("ShopOption5", "Trader", class = "btn-link btn-lg", style = "padding:24px;")
          ),
          column(
            width = 6,
            align = "left",
            actionButton("ShopOption5b", "", class = "btn-link btn-lg", icon = icon("scale-balanced", verify_fa = FALSE))
          ),
          br(),
          br(),
          br(),
          br(),
          br(),
          br(),
          br(),
          br(),
          fluidRow(
            column(
              width = 12,
              align = "center",
              actionButton("BackToTown", "Leave Shops", class = "btn-link btn-lg")
            )
          )
        )
      ))
    } else if (ShopOption1Counter$ShopOption1Clicks == 1 | ShopOption2Counter$ShopOption2Clicks == 1) {
      div(mainPanel(
        h3("Alchemist has been clicked."),
        actionButton("ShopOption1Reset", "Back To Shops")
      ))
    } else if (ShopOption3Counter$ShopOption3Clicks == 1 | ShopOption4Counter$ShopOption4Clicks == 1) {
      div(mainPanel(
        h3("Bank has been clicked."),
        actionButton("ShopOption2Reset", "Back To Shops")
      ))
    } else if (ShopOption5Counter$ShopOption5Clicks == 1 | ShopOption6Counter$ShopOption6Clicks == 1) {
      div(mainPanel(
        h3("Ferrier has been clicked."),
        actionButton("ShopOption3Reset", "Back To Shops")
      ))
    } else if (ShopOption7Counter$ShopOption7Clicks == 1 | ShopOption8Counter$ShopOption8Clicks == 1) {
      div(mainPanel(
        h3("Tavern has been clicked."),
        actionButton("ShopOption4Reset", "Back To Shops")
      ))
    } else if (ShopOption9Counter$ShopOption9Clicks == 1 | ShopOption10Counter$ShopOption10Clicks == 1) {
      div(mainPanel(
        h3("Trader has been clicked."),
        actionButton("ShopOption5Reset", "Back To Shops")
      ))
    }
  })
}
