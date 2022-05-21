library(shiny)
library(shinyWidgets)
library(lubridate)

ui <- fluidPage(
  textOutput("words"),
  textOutput("DateTime"),
  uiOutput("stuff")
)

server <- function(input, output, session) {
  
  ClickCounter <- reactiveVal(0)
  observeEvent(input$click, {
    ClickCounter(1)
  })
  
  observeEvent(input$clickreset, {
    ClickCounter(0)
  })
  
  output$stuff <- renderUI({
    
    if (as.numeric(ClickCounter()) == 0) {
      mainPanel(
        width = 12,
        fluidRow(
          column(
            width = 12,
            align = "center",
            actionButton("click", "click", class = "btn-link btn-lg", style = "padding:24px;")
            )
        )
      )
    } else {
      mainPanel(
        width = 12,
        fluidRow(
          column(
            width = 12,
            align = "center",
            actionButton("clickreset", "clickreset", class = "btn-link btn-lg", style = "padding:24px;")
          )
        )
      )
      }
    })
  
MinutesGoneBy<- reactiveVal(50)
HourOfDay <- reactiveVal(5)
DaysElapsed <- reactiveVal(1)
Switch <- reactiveVal(1)
AmPmToggle <- reactiveVal("pm")
HourTracker <- reactiveVal(17)

observe({
  if (as.numeric(ClickCounter()) == 0) {
  invalidateLater(250,session)
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
    if(nchar(MinutesGoneBy()) == 2){
    output$DateTime <- renderText({
      paste0(HourOfDay(),":",MinutesGoneBy(),"  ",AmPmToggle(),"  ",DaysElapsed())
    })
    } else {
      output$DateTime <- renderText({
        paste0(HourOfDay(),":",0,MinutesGoneBy(),"  ",AmPmToggle(),"  ",DaysElapsed())
      })
    }
  })
  }
})



}
shinyApp(ui, server)
