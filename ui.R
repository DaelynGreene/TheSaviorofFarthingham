ui<-fluidPage(
  
  tags$style("@import url(https://use.fontawesome.com/releases/v6.1.1/css/all.css);",
             HTML(".fa{font-size: 60px; color:#00d6d6; align-middle}"),
             HTML("#run1{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px}"),
             HTML("#run2{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px}"),
             HTML("#run3{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px}"),
             HTML("#run4{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px}"),
             HTML("#run5{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px}"),
             HTML("#run6{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px}"),
             HTML("#run7{color: #00d6d6; font-family: papyrus; font-weight: bolder; font-size: 30px}")
            ),
  
  uiOutput("SaviorOfFarthingham"),
  
  textOutput("title")
  
  )
