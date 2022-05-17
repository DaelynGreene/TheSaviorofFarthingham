library(shiny)
library(shinyWidgets)
library(lubridate)

ui <- fluidPage(
  textOutput("words"),
  textOutput("currentNumber")
)

server <- function(input, output, session) {
  
MinutesGoneBy<- reactiveVal(50)
HourOfDay <- reactiveVal(5)
DaysElapsed <- reactiveVal(1)
Switch <- reactiveVal(1)
AmPmToggle <- reactiveVal("pm")
HourTracker <- reactiveVal(17)


observe({
  invalidateLater(5,session)
  isolate({
    MinutesGoneBy(MinutesGoneBy()+1)
    if(as.numeric(MinutesGoneBy())==60){
      MinutesGoneBy(0)
      HourOfDay(HourOfDay()+1)
      HourTracker(HourTracker()+1)
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
    if (as.numeric(HourTracker()) == 24) {
      HourTracker(0)
      DaysElapsed(DaysElapsed()+1)
    }
  })
})

output$words <- renderText({paste("hour","minute","day")})

output$currentNumber <- renderText({
  paste(HourOfDay(),MinutesGoneBy(),AmPmToggle(),DaysElapsed())
  })

}
shinyApp(ui, server)
