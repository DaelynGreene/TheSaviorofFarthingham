ui<-fluidPage(
  # h2(BackstoryText1,align="center"),
  
  tags$style("@import url(https://use.fontawesome.com/releases/v6.1.0/css/all.css);"),
  tags$head( tags$style(HTML(".fa{font-size: 50px;}"))),
  
  #change the color of links with a tag$href or a or something
  
  actionButton("run","beer-mug-empty", class = "btn-link btn-lg", icon = icon("beer-mug-empty")),
  actionButton("run","bandage", class = "btn-link btn-lg",icon = icon("bandage")),
  actionButton("run","archway", class = "btn-link btn-lg",icon = icon("archway")),
  actionButton("run","apple-whole", class = "btn-link btn-lg",icon = icon("apple-whole")),
  actionButton("run","bottle-droplet", class = "btn-link btn-lg",icon = icon("bottle-droplet")),
  actionButton("run","sack-dollar", class = "btn-link btn-lg",icon = icon("sack-dollar")),
  actionButton("run","cash-register", class = "btn-link btn-lg",icon = icon("cash-register")),
  actionButton("run","dungeon", class = "btn-link btn-lg",icon = icon("dungeon")),
  actionButton("run","fort-awesome", class = "btn-link btn-lg",icon = icon("fort-awesome")),
  actionButton("run","horse", class = "btn-link btn-lg",icon = icon("horse")),
  actionButton("run","mortar-pestle", class = "btn-link btn-lg",icon = icon("mortar-pestle")),
  actionButton("run","scale-balanced ", class = "btn-link btn-lg",icon = icon("scale-balanced")),
  icon("beer-mug-empty")
  
)
