library(shiny)
library(shinyWidgets)

ui <- fluidPage(
  h2("The."),
  setBackgroundImage(src="https://drive.google.com/file/d/15YEYfDGcLxthSBF-f6yQnxWs_efbdWj7/view?usp=sharing",shinydashboard=F)
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)