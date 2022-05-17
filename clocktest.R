library(shiny)
library(shinyWidgets)
library(lubridate)

ui <- fluidPage(
  textOutput("currentNumber")
)

server <- function(input, output, session) {
  
MinutesGoneBy<- reactiveVal(50)
HourOfDay <- reactiveVal(5)
DaysElapsed <- reactiveVal(1)
NumberOfHours24 <- reactiveVal(17)
Switch <- reactiveVal(1)
AmPmToggle <- reactiveVal("pm")


observe({
  invalidateLater(25,session)
  isolate({
    MinutesGoneBy(MinutesGoneBy()+1)
    if(as.numeric(MinutesGoneBy())==60){
      MinutesGoneBy(0)
      NumberOfHours24(NumberOfHours24()+1)
      HourOfDay(HourOfDay()+1)
    }
    if(as.numeric(HourOfDay()) == 13){
      MinutesGoneBy(0)
      HourOfDay(1)
    }
    if (as.numeric(HourOfDay()) == 12 & as.numeric(MinutesGoneBy()) == 0) {
      Switch(Switch()+1)
    }
    if(as.numeric(Switch()) %% 2 == 0){
      AmPmToggle("am")
    } else {
      AmPmToggle("pm")
    }
  })
})

output$currentNumber <- renderText({
  paste(HourOfDay(),MinutesGoneBy(),AmPmToggle(),NumberOfHours24(),Switch())
  })

}
shinyApp(ui, server)
