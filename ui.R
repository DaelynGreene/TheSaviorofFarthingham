ui<-fluidPage(
  # h2(BackstoryText1,align="center"),
  
  tags$style("@import url(https://use.fontawesome.com/releases/v6.1.1/css/all.css);",
             HTML(".fa{font-size: 100px; color:#FF8200; align-middle}"),
             HTML(".fa-fort-awesome{font-size: 100px; color:#FF8200}"),
             HTML("#run1{color: red}")
             
  ),
  
  #change the color of links with a tag$href or a or something
  
  mainPanel(
    width = 12, align = "center",
    actionButton("run1","beer-mug-empty", class = "btn-link btn-lg", icon = icon("beer-mug-empty")), br(),
  actionButton("run2","bandage", class = "btn-link btn-lg",icon = icon("bandage")), br(),
  actionButton("run3","archway", class = "btn-link btn-lg",icon = icon("archway")), br(),
  actionButton("run4","apple-whole", class = "btn-link btn-lg",icon = icon("apple-whole")), br(),
  actionButton("run5","bottle-droplet", class = "btn-link btn-lg",icon = icon("bottle-droplet")), br(),
  actionButton("run6","sack-dollar", class = "btn-link btn-lg",icon = icon("sack-dollar")), br(),
  actionButton("run7","cash-register", class = "btn-link btn-lg",icon = icon("cash-register")), br(),
  actionButton("run8","dungeon", class = "btn-link btn-lg",icon = icon("dungeon")), br(),
  actionButton("run9","fort-awesome", class = "btn-link btn-lg",icon = icon("fort-awesome")), br(),
  actionButton("run10","horse", class = "btn-link btn-lg",icon = icon("horse")), br(),
  actionButton("run11","mortar-pestle", class = "btn-link btn-lg",icon = icon("mortar-pestle")), br(),
  actionButton("run12","scale-balanced ", class = "btn-link btn-lg",icon = icon("scale-balanced")), br(), br(), br()
  # icon("beer-mug-empty")
  )
)
