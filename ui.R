ui<-fluidPage(
  
  tags$style("@import url(https://use.fontawesome.com/releases/v6.1.1/css/all.css);",
             HTML(".fa{font-size: 80px; color:#FF8200; align-middle}"),
             HTML(".fa-fort-awesome{font-size: 100px; color:#FF8200}"),
             HTML("#run1{color: green}"),
             HTML("#run2{color: green}"),
             HTML("#run3{color: green}"),
             HTML("#run4{color: green}"),
             HTML("#run5{color: green}"),
             HTML("#run6{color: green}")
            ),
  
  
  ##########################################################################################################################################################################
  #try throwing all of this to the server and in a renderUi that is contingent on a back button being pressed. Generate each submenu based on the clicking of the icon/word beside it
  #when new page is rendered, reset value of clicked actionButton to 0, that may fix the deal with the page updating properly, use adam's if else statement to make it work properly.
  
  mainPanel(
    width = 12,
    fluidRow(
    column(
        width = 6,
        align = "right",
        actionButton("run1","Alchemist", class = "btn-link btn-lg", style="padding:42px;")),
      column(
        width = 6,
        align = "left",
        actionButton("run1b","", class = "btn-link btn-lg",icon = icon("mortar-pestle",verify_fa = FALSE))
      )
    ),
    br(),
    fluidRow(
      column(
        width = 6,
        align = "right",
        actionButton("run2","Bank", class = "btn-link btn-lg", style="padding:42px;")),
      column(
        width = 6,
        align = "left",
        actionButton("run2b","", class = "btn-link btn-lg",icon = icon("sack-dollar",verify_fa = FALSE))
      )
    ),
    br(),
    fluidRow(
      column(
        width = 6,
        align = "right",
        actionButton("run3","Ferrier", class = "btn-link btn-lg", style="padding:42px;")),
      column(
        width = 6,
        align = "left",
        actionButton("run3b","", class = "btn-link btn-lg",icon = icon("horse",verify_fa = FALSE))
      )
    ),
    br(),
    fluidRow(
      column(
        width = 6,
        align = "right",
        actionButton("run4","Healer", class = "btn-link btn-lg", style="padding:42px;")),
      column(
        width = 6,
        align = "left",
        actionButton("run4b","", class = "btn-link btn-lg",icon = icon("bandage",verify_fa = FALSE))
      )
    ),
    br(),
    fluidRow(
      column(
        width = 6,
        align = "right",
        actionButton("run5","Tavern", class = "btn-link btn-lg", style="padding:42px;")),
      column(
        width = 6,
        align = "left",
        actionButton("run5b","", class = "btn-link btn-lg",icon = icon("beer-mug-empty",verify_fa = FALSE))
      )
    ),
    br(),
    fluidRow(
      column(
        width = 6,
        align = "right",
        actionButton("run6","Trader", class = "btn-link btn-lg", style="padding:42px;")),
      column(
        width = 6,
        align = "left",
        actionButton("run6b","", class = "btn-link btn-lg",icon = icon("cash-register",verify_fa = FALSE))
      )
    )
  )
)
