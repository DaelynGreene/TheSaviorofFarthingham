library(shiny)
library(shinyWidgets)
library(lubridate)

ui <- fluidPage(
  textOutput("words"),
  textOutput("currentNumber")
)

server <- function(input, output, session) {
  
MinutesGoneBy<- reactiveVal(0)
HourOfDay12 <- reactiveVal(5)
DaysElapsed <- reactiveVal(1)
NumberOfHours24 <- reactiveVal(17)
AmPmToggle <- reactiveVal("pm")

observe({
    invalidateLater(25,session)
    isolate({
      MinutesGoneBy(MinutesGoneBy()+1)
      if(as.numeric(MinutesGoneBy())==60){
        HourOfDay12(HourOfDay12()+1)
        MinutesGoneBy(0)
        NumberOfHours24(NumberOfHours24()+1)
      }
      if(as.numeric(NumberOfHours24()==24)){
        DaysElapsed(DaysElapsed()+1)
        HourOfDay12(1)
        AmPmToggle("am")
      }
      if(as.numeric(HourOfDay12()) == 12){
        AmPmToggle("pm")
      }
    })
})

output$currentNumber <- renderText({
  paste(HourOfDay12(),MinutesGoneBy(),AmPmToggle(),NumberOfHours24())
  })

output$words <- renderText({
  paste("hour","minutes","hours")
})

}
shinyApp(ui, server)