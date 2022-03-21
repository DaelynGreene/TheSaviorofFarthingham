library(shiny)
library(shinyWidgets)

ui<-fluidPage(
  setBackgroundImage(BackgroundImage),
  h2(BackstoryText1,align="center"),
  
  
  actionButton("run","Run Analysis", class = "btn-link")
  
  
)