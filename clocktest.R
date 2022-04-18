library(shiny)
library(shinyWidgets)
library(lubridate)
ui <- fluidPage(
  textOutput("currentNumber")
)



# Server logic
server <- function(input, output, session) {
  
  



NumberTest <- reactiveVal(0)
NumberTest2 <- reactiveVal(0)

observe({
    invalidateLater(1000,session)
    isolate({
      NumberTest(NumberTest()+1)
      if(as.numeric(NumberTest())==60){
        NumberTest2(NumberTest2()+1)
        NumberTest(0)
      }
    })
})


output$currentNumber <- renderText({
  paste(as.numeric(NumberTest()),NumberTest2())
  })

}
shinyApp(ui, server)


