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
NumberTest3 <- reactiveVal(0)

observe({
    invalidateLater(1000,session)
    isolate({
      NumberTest(NumberTest()+1)
      if(as.numeric(NumberTest())==4){
        NumberTest2(NumberTest2()+1)
        NumberTest(0)
      }
      if(as.numeric(NumberTest2()==4)){
        NumberTest3(NumberTest3()+1)
        NumberTest2(0)
      }
    })
})


output$currentNumber <- renderText({
  paste(NumberTest(),NumberTest2(),NumberTest3())
  })

}
shinyApp(ui, server)


