library(shiny)
library(shinyWidgets)
library(lubridate)

ui <- fluidPage(
  textOutput("currentNumber")
)

######### with current setup one in-game day is 161 seconds real time

# Server logic
server <- function(input, output, session) {
  
NumberTest <- reactiveVal(0)
NumberTest2 <- reactiveVal(1)
NumberTest3 <- reactiveVal(0)
NumberTest4 <- reactiveVal(0)

observe({
    invalidateLater(250,session)
    isolate({
      NumberTest(NumberTest()+1)
      if(as.numeric(NumberTest())==60){
        NumberTest2(NumberTest2()+1)
        NumberTest(0)
      }
      if(as.numeric(NumberTest2()==24)){
        NumberTest3(NumberTest3()+1)
        NumberTest2(0)
      }
    })
})

observe({
  invalidateLater(1000,session)
  isolate({
    NumberTest4(NumberTest4()+1)
  })
})

output$currentNumber <- renderText({
  paste(NumberTest(),NumberTest2(),NumberTest3(),NumberTest4())
  })

}
shinyApp(ui, server)