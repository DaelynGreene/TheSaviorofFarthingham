library(shiny)

server<-function(input,output,session){
  
  ClickCounter1 <- reactiveValues(NumberClicks1 = 0)
  observeEvent(input$run1, {ClickCounter1$NumberClicks1 <- 1})
  
  ClickCounter2 <- reactiveValues(NumberClicks2 = 0)
  observeEvent(input$run1b, {ClickCounter2$NumberClicks2 <- 1})
  
  ClickCounter3 <- reactiveValues(NumberClicks3 = 0)
  observeEvent(input$run2, {ClickCounter3$NumberClicks3 <- 1})
               
  ClickCounter4 <- reactiveValues(NumberClicks4 = 0)
  observeEvent(input$run2b, {ClickCounter4$NumberClicks4 <- 1})            
               
  ClickCounter5 <- reactiveValues(NumberClicks5 = 0)
  observeEvent(input$run3, {ClickCounter5$NumberClicks5 <- 1})           
               
  ClickCounter6 <- reactiveValues(NumberClicks6 = 0)
  observeEvent(input$run3b, {ClickCounter6$NumberClicks6 <- 1})           
               
  ClickCounter7 <- reactiveValues(NumberClicks7 = 0)
  observeEvent(input$run4, {ClickCounter7$NumberClicks7 <- 1})
               
  ClickCounter8 <- reactiveValues(NumberClicks8 = 0)
  observeEvent(input$run4b, {ClickCounter8$NumberClicks8 <- 1})
               
  ClickCounter9 <- reactiveValues(NumberClicks9 = 0)
  observeEvent(input$run5, {ClickCounter9$NumberClicks9 <- 1})
               
  ClickCounter10 <- reactiveValues(NumberClicks10 = 0)
  observeEvent(input$run5b, {ClickCounter10$NumberClicks10 <- 1})
               
  ClickCounter11 <- reactiveValues(NumberClicks11 = 0)
  observeEvent(input$run6, {ClickCounter11$NumberClicks11 <- 1})
               
  ClickCounter12 <- reactiveValues(NumberClicks12 = 0)
  observeEvent(input$run6b, {ClickCounter12$NumberClicks12 <- 1})
  
  ClickCounter13 <- reactiveValues(NumberClicks13 = 0)
  observeEvent(input$run7, {ClickCounter13$NumberClicks13 <- 1})
  
  ClickCounter14 <- reactiveValues(NumberClicks14 = 0)
  observeEvent(input$run7b, {ClickCounter14$NumberClicks14 <- 1})
               
  
  
  observeEvent(input$reset1, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0;ClickCounter3$NumberClicks3;ClickCounter4$NumberClicks4;ClickCounter5$NumberClicks5;ClickCounter6$NumberClicks6;ClickCounter7$NumberClicks7;ClickCounter8$NumberClicks8;ClickCounter9$NumberClicks9;ClickCounter10$NumberClicks10;ClickCounter11$NumberClicks11;ClickCounter12$NumberClicks12;ClickCounter13$NumberClicks13;ClickCounter14$NumberClicks14})
               
  observeEvent(input$reset2, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0;ClickCounter3$NumberClicks3;ClickCounter4$NumberClicks4;ClickCounter5$NumberClicks5;ClickCounter6$NumberClicks6;ClickCounter7$NumberClicks7;ClickCounter8$NumberClicks8;ClickCounter9$NumberClicks9;ClickCounter10$NumberClicks10;ClickCounter11$NumberClicks11;ClickCounter12$NumberClicks12;ClickCounter13$NumberClicks13;ClickCounter14$NumberClicks14})
  
  observeEvent(input$reset3, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0;ClickCounter3$NumberClicks3;ClickCounter4$NumberClicks4;ClickCounter5$NumberClicks5;ClickCounter6$NumberClicks6;ClickCounter7$NumberClicks7;ClickCounter8$NumberClicks8;ClickCounter9$NumberClicks9;ClickCounter10$NumberClicks10;ClickCounter11$NumberClicks11;ClickCounter12$NumberClicks12;ClickCounter13$NumberClicks13;ClickCounter14$NumberClicks14})
  
  observeEvent(input$reset4, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0;ClickCounter3$NumberClicks3;ClickCounter4$NumberClicks4;ClickCounter5$NumberClicks5;ClickCounter6$NumberClicks6;ClickCounter7$NumberClicks7;ClickCounter8$NumberClicks8;ClickCounter9$NumberClicks9;ClickCounter10$NumberClicks10;ClickCounter11$NumberClicks11;ClickCounter12$NumberClicks12;ClickCounter13$NumberClicks13;ClickCounter14$NumberClicks14})
  
  observeEvent(input$reset5, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0;ClickCounter3$NumberClicks3;ClickCounter4$NumberClicks4;ClickCounter5$NumberClicks5;ClickCounter6$NumberClicks6;ClickCounter7$NumberClicks7;ClickCounter8$NumberClicks8;ClickCounter9$NumberClicks9;ClickCounter10$NumberClicks10;ClickCounter11$NumberClicks11;ClickCounter12$NumberClicks12;ClickCounter13$NumberClicks13;ClickCounter14$NumberClicks14})
  
  observeEvent(input$reset6, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0;ClickCounter3$NumberClicks3;ClickCounter4$NumberClicks4;ClickCounter5$NumberClicks5;ClickCounter6$NumberClicks6;ClickCounter7$NumberClicks7;ClickCounter8$NumberClicks8;ClickCounter9$NumberClicks9;ClickCounter10$NumberClicks10;ClickCounter11$NumberClicks11;ClickCounter12$NumberClicks12;ClickCounter13$NumberClicks13;ClickCounter14$NumberClicks14})
  
  observeEvent(input$reset7, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0;ClickCounter3$NumberClicks3;ClickCounter4$NumberClicks4;ClickCounter5$NumberClicks5;ClickCounter6$NumberClicks6;ClickCounter7$NumberClicks7;ClickCounter8$NumberClicks8;ClickCounter9$NumberClicks9;ClickCounter10$NumberClicks10;ClickCounter11$NumberClicks11;ClickCounter12$NumberClicks12;ClickCounter13$NumberClicks13;ClickCounter14$NumberClicks14})
  
  observeEvent(input$reset8, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0;ClickCounter3$NumberClicks3;ClickCounter4$NumberClicks4;ClickCounter5$NumberClicks5;ClickCounter6$NumberClicks6;ClickCounter7$NumberClicks7;ClickCounter8$NumberClicks8;ClickCounter9$NumberClicks9;ClickCounter10$NumberClicks10;ClickCounter11$NumberClicks11;ClickCounter12$NumberClicks12;ClickCounter13$NumberClicks13;ClickCounter14$NumberClicks14})
  
  observeEvent(input$reset9, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0;ClickCounter3$NumberClicks3;ClickCounter4$NumberClicks4;ClickCounter5$NumberClicks5;ClickCounter6$NumberClicks6;ClickCounter7$NumberClicks7;ClickCounter8$NumberClicks8;ClickCounter9$NumberClicks9;ClickCounter10$NumberClicks10;ClickCounter11$NumberClicks11;ClickCounter12$NumberClicks12;ClickCounter13$NumberClicks13;ClickCounter14$NumberClicks14})
  
  observeEvent(input$reset10, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0;ClickCounter3$NumberClicks3;ClickCounter4$NumberClicks4;ClickCounter5$NumberClicks5;ClickCounter6$NumberClicks6;ClickCounter7$NumberClicks7;ClickCounter8$NumberClicks8;ClickCounter9$NumberClicks9;ClickCounter10$NumberClicks10;ClickCounter11$NumberClicks11;ClickCounter12$NumberClicks12;ClickCounter13$NumberClicks13;ClickCounter14$NumberClicks14})
  
  observeEvent(input$reset11, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0;ClickCounter3$NumberClicks3;ClickCounter4$NumberClicks4;ClickCounter5$NumberClicks5;ClickCounter6$NumberClicks6;ClickCounter7$NumberClicks7;ClickCounter8$NumberClicks8;ClickCounter9$NumberClicks9;ClickCounter10$NumberClicks10;ClickCounter11$NumberClicks11;ClickCounter12$NumberClicks12;ClickCounter13$NumberClicks13;ClickCounter14$NumberClicks14})
  
  observeEvent(input$reset12, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0;ClickCounter3$NumberClicks3;ClickCounter4$NumberClicks4;ClickCounter5$NumberClicks5;ClickCounter6$NumberClicks6;ClickCounter7$NumberClicks7;ClickCounter8$NumberClicks8;ClickCounter9$NumberClicks9;ClickCounter10$NumberClicks10;ClickCounter11$NumberClicks11;ClickCounter12$NumberClicks12;ClickCounter13$NumberClicks13;ClickCounter14$NumberClicks14})
  
  observeEvent(input$reset13, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0;ClickCounter3$NumberClicks3;ClickCounter4$NumberClicks4;ClickCounter5$NumberClicks5;ClickCounter6$NumberClicks6;ClickCounter7$NumberClicks7;ClickCounter8$NumberClicks8;ClickCounter9$NumberClicks9;ClickCounter10$NumberClicks10;ClickCounter11$NumberClicks11;ClickCounter12$NumberClicks12;ClickCounter13$NumberClicks13;ClickCounter14$NumberClicks14})
  
  observeEvent(input$reset14, {ClickCounter1$NumberClicks1 <- 0;ClickCounter2$NumberClicks2 <- 0;ClickCounter3$NumberClicks3;ClickCounter4$NumberClicks4;ClickCounter5$NumberClicks5;ClickCounter6$NumberClicks6;ClickCounter7$NumberClicks7;ClickCounter8$NumberClicks8;ClickCounter9$NumberClicks9;ClickCounter10$NumberClicks10;ClickCounter11$NumberClicks11;ClickCounter12$NumberClicks12;ClickCounter13$NumberClicks13;ClickCounter14$NumberClicks14})
  
  
  output$SaviorOfFarthingham <- renderUI({
               if ((ClickCounter1$NumberClicks1 &  ClickCounter2$NumberClicks2 &  ClickCounter3$NumberClicks3 &  ClickCounter4$NumberClicks4 &  ClickCounter5$NumberClicks5 &  ClickCounter6$NumberClicks6 &  ClickCounter7$NumberClicks7 &  ClickCounter8$NumberClicks8 &  ClickCounter9$NumberClicks9 &  ClickCounter10$NumberClicks10 &  ClickCounter11$NumberClicks11 &  ClickCounter12$NumberClicks12 &  ClickCounter13$NumberClicks13 &  ClickCounter14$NumberClicks14) == 0) {
                 div(mainPanel(
                 width = 12,
                 fluidRow(
                   column(
                     width = 6,
                     align = "right",
                     actionButton("run1","Alchemist", class = "btn-link btn-lg", style="padding:42px;")),
                   column(
                     width = 6,
                     align = "left",
                     actionButton("run1b","", class = "btn-link btn-lg",icon = icon("mortar-pestle",verify_fa = FALSE))
                   )
                 ),
                 br(),
                 fluidRow(
                   column(
                     width = 6,
                     align = "right",
                     actionButton("run2","Bank", class = "btn-link btn-lg", style="padding:42px;")),
                   column(
                     width = 6,
                     align = "left",
                     actionButton("run2b","", class = "btn-link btn-lg",icon = icon("sack-dollar",verify_fa = FALSE))
                   )
                 ),
                 br(),
                 fluidRow(
                   column(
                     width = 6,
                     align = "right",
                     actionButton("run3","Ferrier", class = "btn-link btn-lg", style="padding:42px;")),
                   column(
                     width = 6,
                     align = "left",
                     actionButton("run3b","", class = "btn-link btn-lg",icon = icon("horse",verify_fa = FALSE))
                   )
                 ),
                 br(),
                 fluidRow(
                   column(
                     width = 6,
                     align = "right",
                     actionButton("run4","Healer", class = "btn-link btn-lg", style="padding:42px;")),
                   column(
                     width = 6,
                     align = "left",
                     actionButton("run4b","", class = "btn-link btn-lg",icon = icon("bandage",verify_fa = FALSE))
                   )
                 ),
                 br(),
                 fluidRow(
                   column(
                     width = 6,
                     align = "right",
                     actionButton("run5","Tavern", class = "btn-link btn-lg", style="padding:42px;")),
                   column(
                     width = 6,
                     align = "left",
                     actionButton("run5b","", class = "btn-link btn-lg",icon = icon("beer-mug-empty",verify_fa = FALSE))
                   )
                 ),
                 br(),
                 fluidRow(
                   column(
                     width = 6,
                     align = "right",
                     actionButton("run6","Trader", class = "btn-link btn-lg", style="padding:42px;")),
                   column(
                     width = 6,
                     align = "left",
                     actionButton("run6b","", class = "btn-link btn-lg",icon = icon("cash-register",verify_fa = FALSE))
                   )
                 ),
                 br(),
                 fluidRow(
                   column(
                     width = 6,
                     align = "right",
                     actionButton("run7","Trainer", class = "btn-link btn-lg", style="padding:42px;")),
                   column(
                     width = 6,
                     align = "left",
                     actionButton("run7b","", class = "btn-link btn-lg",icon = icon("dumbbell",verify_fa = FALSE))
                   )
                 )
               ))
               } else if (ClickCounter1$NumberClicks1 == 1) {
    h3("Button 1 has been clicked.")
  }
  })
  
}