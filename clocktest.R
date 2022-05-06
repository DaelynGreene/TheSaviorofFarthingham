library(shiny)
library(shinyWidgets)
library(lubridate)

ui <- fluidPage(
  textOutput("currentNumber")
)

server <- function(input, output, session) {
  
NumberTest <- reactiveVal(0)
NumberTest2 <- reactiveVal(5)
NumberTest3 <- reactiveVal(0)
NumberTest4 <- reactiveVal(17)
NumberTest5 <- reactiveVal("pm")

observe({
    invalidateLater(25,session)
    isolate({
      NumberTest(NumberTest()+1)
      if(as.numeric(NumberTest())==60){
        NumberTest2(NumberTest2()+1)
        NumberTest(0)
        NumberTest4(NumberTest4()+1)
      }
      if(as.numeric(NumberTest4()==24)){
        NumberTest3(NumberTest3()+1)
        NumberTest2(1)
        NumberTest5("am")
      }
      if(as.numeric(NumberTest2()) == 12){
        NumberTest5("pm")
      }
    })
})

output$currentNumber <- renderText({
  paste(NumberTest2(),NumberTest(),NumberTest5())
  })

}
shinyApp(ui, server)